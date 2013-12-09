require 'spec_helper'

describe DataMapper::Adapters::Format::Xml do
  let(:default_mime) { "application/xml" }
  let(:default_extension) { "xml" }
  
  it_should_behave_like "a Format"
  
  before(:all) do
    # DataMapper::Logger.new(STDOUT, :debug)
  end
  
  describe "#generate_payload" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Xml.new
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
      book_xml = DataMapper::Ext::String.compress_lines(@format.generate_payload(book))
      # FIXME: This hack to silence 'single' vs "double" quotes and <a> <b> vs <a></b> fragile test failures isn't ideal
      book_xml.tr("'", '"').tr('"', "'").gsub(/> </, "><").should == @xml.tr("'", '"').tr('"', "'").gsub(/> </, "><")
    end
  end
  
  describe "#update_attributes" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Xml.new
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
      @format = DataMapper::Adapters::Format::Xml.new
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
      @format.record_selector = 'response.forecast.txt_forecast.forecastday'
      record = @format.parse_record(@weather_xml_instance, ForecastDay)
      record["period"].should == 0
  		record["icon"].should == "snow"
  		record["icon_url"].should == "http://icons-ak.wxug.com/i/c/k/snow.gif"
  		record["title"].should == "Monday"
  		record["fcttext"].should == "Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible."
  		record["fcttext_metric"].should == "Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible."
  		record["pop"].should == "90"
    end
    
    it "loads a record from XML using a overrided provided selector" do
      @format.record_selector = 'response.forecast.txt_forecast.forecastday'
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
      @format = DataMapper::Adapters::Format::Xml.new
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
    
    it "default collection selector with no override" do
      @format.send(:collection_selector_expression, Book).should == "/livres/livre"
      
      @format.collection_selector = "response.bogus"
      @format.send(:collection_selector_expression, Book).should == "/response/bogus"
      
      @format.collection_selector = ".response.bogus"
      @format.send(:collection_selector_expression, Book).should == "//response/bogus"
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
    
    it "loads a recordset from a string represention using a provided selector" do
      @format.collection_selector = 'response.forecast.txt_forecast.forecastdays.forecastday'
      collection = @format.parse_collection(@weather_xml_collection, ForecastDay)
      collection.should have(8).entries
    end
    
    it "loads a recordset from a string represention using a provided overrided selector" do
      @format.collection_selector = '.forecastday'
      collection = @format.parse_collection(@weather_xml_collection, ForecastDay)
      collection.should have(12).entries
    end
    
    it "loads a recordset from a crazy string representation that has array properties" do
      @format.collection_selector = nil
      collection = @format.parse_collection(NOTICES_XML_COLLECTION, Notice)
      collection.should have(5).entries
      collection[0]["ID"].should == 58
      collection[0]["CustomerName"].should == "ABC Corp"
      collection[0]["Process"].should == "Finance"
      collection[0]["NoticeCategory"].should == "Company News"
      collection[0]["Comments"].should have(5).entries
      collection[2]["Comments"].should have(3).entries
      collection[2]["Comments"].should == [{"CreatedAt"=>"4/30/2013 3:03:50 PM", "CreatedBy"=>"Mark Greene", "CommentText"=>"This is a comment by a different user."}, {"CreatedAt"=>"4/30/2013 3:02:31 PM", "CreatedBy"=>"John Miller", "CommentText"=>"This is a \r test comment\r with line bresk 2"}, {"CreatedAt"=>"4/30/2013 3:02:07 PM", "CreatedBy"=>"John Miller", "CommentText"=>"This is a test comment 1"}]
    end
    
    it "loads a recordset from a crazy string representation using provided selector" do
      @format.collection_selector = '.Comment'
      collection = @format.parse_collection(NOTICES_XML_COLLECTION, Comment)
      collection.should have(13).entries
    end
    
    it "loads a recordset from a string using a selector that contains a dash and an underscore" do
      data = <<-XML
      <response>
      	<version>0.1</version>
      	<termsofService>http://www.wunderground.com/weather/api/d/terms.html</termsofService>
      	<features>
      		<feature>forecast</feature>
      	</features>
      	<silly_forecast>
      		<txt-forecast>
      		<date>10:00 AM EST</date>
      		<forecastdays>
      		 <forecastday>
      		  <period>0</period>
        		<icon>snow</icon>
        		<icon_url>http://icons-ak.wxug.com/i/c/k/snow.gif</icon_url>
        		<title>Monday</title>
        		<fcttext><![CDATA[Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible.]]></fcttext>
        		<fcttext_metric><![CDATA[Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible.]]></fcttext_metric>
        		<pop>90</pop>
        	 </forecastday>
      		</forecastdays>
      		</txt-forecast>
      	</silly_forecast>
      </response>
      XML
      
      @format.collection_selector = 'response.silly_forecast.txt-forecast.forecastdays.forecastday'
      collection = @format.parse_collection(data, ForecastDay)
      collection.should have(1).entries
      record = collection[0]
      record["period"].should == 0
  		record["icon"].should == "snow"
  		record["icon_url"].should == "http://icons-ak.wxug.com/i/c/k/snow.gif"
  		record["title"].should == "Monday"
  		record["fcttext"].should == "Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible."
  		record["fcttext_metric"].should == "Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible."
  		record["pop"].should == "90"
    end
  end

  describe "#parse nested collection" do

    before(:each) do
      @format = DataMapper::Adapters::Format::Xml.new
      @time = DateTime.new
      @xml = DataMapper::Ext::String.compress_lines(<<-XML)
        <bookmarks>
          <bookmark>
            <id type="integer">1</id>
            <created_at type="datetime">#{@time.to_s}</created_at>
            <name>Testing</name>
            <notices>
              <notice>
                  <user>cupcake</user>
                  <message>uh oh</message>
               </notice>
               <notice>
                  <user>cupcake1</user>
                  <message>uh oh</message>
              </notice>
            </notices>
          </bookmark>
          <bookmark>
            <id type="integer">2</id>
            <created_at type="datetime">#{@time.to_s}</created_at>
            <name>Testing 1</name>
            <notices>
              <notice>
                  <user>cookie</user>
                  <message>uh oh</message>
              </notice>
            </notices>
          </bookmark>
        </bookmarks>
      XML

    end

    it "loads a recordset from the string representation" do
      collection = @format.parse_collection(@xml, Bookmark)
      collection.should have(2).entries
      collection[0]["id"].should == 1
      collection[0]["created_at"].should == @time
      collection[0]['notices'].size.should == 2
      collection[0]['notices'][0]["user"].should == "cupcake"
      collection[0]['notices'][0]["message"].should == "uh oh"
      collection[0]['notices'][1]["user"].should == "cupcake1"
      collection[0]['notices'][1]["message"].should == "uh oh"
    end

  end
  
  describe "#parse crappy nested collection" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Xml.new
      @format.collection_selector = 'Atms.Atm'
      @xml = DataMapper::Ext::String.compress_lines(<<-XML)
      <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
        <Atms><PageOffset>0</PageOffset><TotalCount>2</TotalCount>
          <Atm>
            <Location>
              <Name>157 ROCKAWAY CORP.</Name>
              <Distance>0.00</Distance>
              <DistanceUnit>mile</DistanceUnit>
              <Address>
                <Line1>15723 ROCKAWAY BLVD</Line1>
                <City>JAMAICA</City>
                <PostalCode>11434</PostalCode>
                <CountrySubdivision>
                  <Name></Name>
                  <Code>NY</Code>
                </CountrySubdivision>
                <Country>
                  <Name></Name>
                  <Code>USA</Code>
                </Country>
              </Address>
              <Point>
                <Latitude>40.666256</Latitude>
                <Longitude>-73.779289</Longitude>
              </Point>
            </Location>
            <HandicapAccessible>NO</HandicapAccessible>
            <Camera>NO</Camera>
            <Availability>UNKNOWN</Availability>
            <AccessFees>0</AccessFees>
            <Owner>ATLAS ATM CORP</Owner>
            <SharedDeposit>YES</SharedDeposit>
            <SurchareFreeAlliance>NO</SurchareFreeAlliance>
            <Sponsor>ATLAS ATM CORP</Sponsor>
            <SupportEMV>0</SupportEMV>
          </Atm>
          <Atm>
            <Location>
              <Name>ABREU S MINI MART</Name>
              <Distance>3.47</Distance>
              <DistanceUnit>mile</DistanceUnit>
              <Address>
                <Line1>20219 JAMAICA AVE</Line1>
                <City>HOLLIS</City>
                <PostalCode>11423</PostalCode>
                <CountrySubdivision>
                  <Name></Name>
                  <Code>NY</Code>
                </CountrySubdivision>
                <Country>
                  <Name></Name>
                  <Code>USA</Code>
                </Country>
              </Address>
              <Point>
                <Latitude>40.713606</Latitude>
                <Longitude>-73.756899</Longitude>
              </Point>
            </Location>
            <HandicapAccessible>NO</HandicapAccessible>
            <Camera>NO</Camera>
            <Availability>ALWAYS_AVAILABLE</Availability>
            <AccessFees>0</AccessFees>
            <Owner>CROWN ATM NETWORK, LLC</Owner>
            <SharedDeposit>YES</SharedDeposit>
            <SurchareFreeAlliance>NO</SurchareFreeAlliance>
            <Sponsor>CROWN ATM NETWORK, LLC</Sponsor>
            <SupportEMV>1</SupportEMV>
          </Atm>
        </Atms>
      XML
    end

    it "loads an XML collection with a garbage hash" do
      collection = @format.parse_collection(@xml, Atm)
      collection.should have(2).entries
      atm1 = collection.first

      atm1["Owner"].should =="ATLAS ATM CORP"
      atm1["AccessFees"].should == 0
      atm1["Availability"].should == "UNKNOWN"
      atm1["Camera"].should == "NO"
      atm1["HandicapAccessible"].should == "NO"
      atm1["SharedDeposit"].should == "YES"
      atm1["Sponsor"].should == "ATLAS ATM CORP"
      atm1["SupportEMV"].should == 0
      atm1["Location"]["Address"]["Line1"].should == "15723 ROCKAWAY BLVD"
      atm1["Location"]["Address"]["City"].should == "JAMAICA"
      atm1["Location"]["Address"]["PostalCode"].should == "11434"
      atm1["Location"]["Address"]["CountrySubdivision"]["Code"].should == "NY"
      atm1["Location"]["Address"]["Country"]["Code"].should == "USA"
    end
  end

end
