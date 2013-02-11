require 'spec_helper'

describe DataMapperRest::Format::Xml do
  let(:default_mime) { "application/xml" }
  let(:default_extension) { "xml" }
  
  it_should_behave_like "a Format"
  
  describe "#string_representation" do
    before(:each) do
      @format = DataMapperRest::Format::Xml.new
      @time = DateTime.now
      @xml = DataMapper::Ext::String.compress_lines(<<-XML)
        <book>
          <id type="integer">1</id>
          <created_at type="datetime">#{@time.to_s}</created_at>
          <title>Testing</title>
          <author>Testy McTesty</author>
          <comment>Oranges</comment>
        </book>
      XML
    end

    it "returns an XML string representing the resource" do
      book = Book.new(
        :id         => 1,
        :created_at => @time,
        :title      => "Testing",
        :author     => "Testy McTesty",
        :comment    => "Oranges"
      )
      book_xml = DataMapper::Ext::String.compress_lines(@format.string_representation(book))
      # FIXME: This hack to silence 'single' vs "double" quotes and <a> <b> vs <a></b> fragile test failures isn't ideal
      book_xml.tr("'", '"').tr('"', "'").gsub(/> </, "><").should == @xml.tr("'", '"').tr('"', "'").gsub(/> </, "><")
    end
  end
  
  describe "#update_attributes" do
    before(:each) do
      @format = DataMapperRest::Format::Xml.new
      @time = DateTime.new
      @xml = DataMapper::Ext::String.compress_lines(<<-XML)
        <livre>
          <id type="integer">1</id>
          <created_at type="datetime">#{@time.to_s}</created_at>
          <title>Testing</title>
          <author>Testy McTesty</author>
          <comment>Radiohead</comment>
        </livre>
      XML
    end
    
    it "updates the attributes in the resource based on the response" do
      book = Book.new
      @format.update_attributes(book, @xml)
      
      book.id.should == 1
      book.created_at.should == @time
      book.title.should == "Testing"
      book.author.should == "Testy McTesty"
      book.comment == "Radiohead"
    end
  end
  
  describe "#parse_record" do
    before(:each) do
      @format = DataMapperRest::Format::Xml.new
      @time = DateTime.new
      @xml = DataMapper::Ext::String.compress_lines(<<-XML)
        <livre>
          <id type="integer">1</id>
          <created_at type="datetime">#{@time.to_s}</created_at>
          <title>Testing</title>
          <author>Testy McTesty</author>
        </livre>
      XML
      @weather_xml_instance = WUNDERGROUND_XML_INSTANCE
    end
    
    it "loads a record from the string representation" do
      record = @format.parse_record(@xml, Book)
      record["id"].should == 1
      record["created_at"].should == @time
      record["title"].should == "Testing"
      record["author"].should == "Testy McTesty"
    end
    
    it "loads a record from XML using a provided selector" do
      @format.record_selector = 'response.forecast.txt_forecast'
      record = @format.parse_record(@weather_xml_instance, ForecastDay)
      record["period"].should == 0
  		record["icon"].should == "snow"
  		record["icon_url"].should == "http://icons-ak.wxug.com/i/c/k/snow.gif"
  		record["title"].should == "Monday"
  		record["fcttext"].should == "Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible."
  		record["fcttext_metric"].should == "Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible."
  		record["pop"].should == "90"
    end
  end
  
  describe "#parse_collection" do
    before(:each) do
      @format = DataMapperRest::Format::Xml.new
      @time = DateTime.new
      @xml = DataMapper::Ext::String.compress_lines(<<-XML)
        <livres>
          <livre>
            <id type="integer">1</id>
            <created_at type="datetime">#{@time.to_s}</created_at>
            <title>Testing</title>
            <author>Testy McTesty</author>
            <comment>This is a comment</comment>
          </livre>
          <livre>
            <id type="integer">2</id>
            <created_at type="datetime">#{@time.to_s}</created_at>
            <title>Testing 2</title>
            <author>Besty McBesty</author>
            <comment>This is a comment also</comment>
          </livre>
        </livres>
      XML
      
      @weather_xml_collection = WUNDERGROUND_XML_COLLECTION
    end
    
    it "loads a recordset from the string representation" do
      collection = @format.parse_collection(@xml, Book)
      collection.should have(2).entries
      collection[0]["id"].should == 1
      collection[0]["created_at"].should == @time
      collection[0]["title"].should == "Testing"
      collection[0]["author"].should == "Testy McTesty"
      collection[1]["id"].should == 2
      collection[1]["created_at"].should == @time
      collection[1]["title"].should == "Testing 2"
      collection[1]["author"].should == "Besty McBesty"
    end
    
    it "loads a recordset from a string represenation using a provided selector" do
      @format.collection_selector = 'response.forecast.txt_forecast'
      collection = @format.parse_collection(@weather_xml_collection, ForecastDay)
      collection.should have(8).entries
    end
  end
end
