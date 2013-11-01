require 'spec_helper'

describe DataMapper::Adapters::Format::Json do
  let(:default_mime) { "application/json" }
  let(:default_extension) { "json" }
  
  it_should_behave_like "a Format"
  
  describe "#generate_payload" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Json.new
      @time = DateTime.now
    end
    
    context "with a simple resource" do
      before(:each) do
        @json = '{"id":1,"created_at":"' + @time.to_s + '","title":"Testing","author":"Testy McTesty","comment_crazy_mapping":"Why I write such good books?"}'
        @msg_json = '{"id":42,"conversation_id":null,"company_id":"28048220-1419-45AC-874B-80B26CFEBA57","conv_input":{"timestamp":"2013-03-25T21:08:01.123Z","geo_lat":null,"geo_long":null,"geo_err":null},"exec_actions":"CAO","input_region":"VHS","message_region":"test","server_id":33,"state":"VA","state_data":["humpty","dumpty"],"titlebar_region":"Snickers"}'
      end
      
      it "returns a JSON string representing the resource" do
        book = Book.new(
          :id         => 1,
          :created_at => @time,
          :title      => "Testing",
          :author     => "Testy McTesty",
          :comment    => "Why I write such good books?"
        )
        book_json = @format.generate_payload(book)
        book_json.should == @json
      end
      
      it "returns a JSON string representing the resource without encoding array" do
        message = Message.new(
          :id         => 42,
          :company_id => "28048220-1419-45AC-874B-80B26CFEBA57",
          :conv_input => {timestamp: "2013-03-25T21:08:01.123Z", geo_lat: nil, geo_long: nil, geo_err: nil},
          :exec_actions =>"CAO",
          :input_region =>"VHS",
          :message_region => "test",
          :server_id => 33,
          :state => "VA",
          :state_data => ["humpty","dumpty"],
          :titlebar_region => "Snickers"
        )
        message_json = @format.generate_payload(message)
        message_json.should == @msg_json
      end
    end
    
    context "with a complex resource" do
      before(:each) do
        @json = '{"id":1,"created_at":"' + @time.to_s + '","title":"Testing","author":"Testy McTesty","pid":7,"comment_crazy_mapping":"Open your eyes, dental floss!"}'
      end
      
      it "uses :field mappings" do
        book = DifficultBook.new(
          :id           => 1,
          :created_at   => @time,
          :title        => "Testing",
          :author       => "Testy McTesty",
          :publisher_id => 7,
          :comment      => "Open your eyes, dental floss!"
        )
        book_json = @format.generate_payload(book)
        book_json.should == @json
      end
    end
  end
  
  describe "#update_attributes" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Json.new
      @time = DateTime.new
      @json = '{"id":1,"created_at":"' + @time.to_s + '","title":"Testing","author":"Testy McTesty","comment":"No comment dude"}'
    end
    
    it "updates the attributes in the resource based on the response" do
      book = Book.new
      @format.update_attributes(book, @json)
      
      book.id.should == 1
      book.created_at.should == @time
      book.title.should == "Testing"
      book.author.should == "Testy McTesty"
    end
  end
  
  describe "#parse_record" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Json.new
      @time = DateTime.new
      @json = '{"id":1,"created_at":"' + @time.to_s + '","title":"Testing","author":"Testy McTesty","comment_crazy_mapping":"Donuts"}'
      @weather_json_instance = WUNDERGROUND_JSON_INSTANCE
    end
    
    it "loads a record from the string representation" do
      record = @format.parse_record(@json, Book)
      record["id"].should == 1
      record["created_at"].should == @time
      record["title"].should == "Testing"
      record["author"].should == "Testy McTesty"
      record["comment_crazy_mapping"].should == "Donuts"
    end
    
    it "loads a record from a string represenation using a provided selector" do
      @format.record_selector = '$.forecast.txt_forecast'
      record = @format.parse_record(@weather_json_instance, ForecastDay)
      record["period"].should == 0
  		record["icon"].should == "partlycloudy"
  		record["icon_url"].should == "http://icons-ak.wxug.com/i/c/k/partlycloudy.gif"
  		record["title"].should == "Thursday"
  		record["fcttext"].should == "Partly cloudy. High of 28F. Winds from the NNW at 5 to 10 mph."
  		record["fcttext_metric"].should == "Partly cloudy. High of -2C. Winds from the NNW at 5 to 15 km/h."
  		record["pop"].should == "0"
    end
  end
  
  describe "#parse_collection" do
    before(:each) do
      @format = DataMapper::Adapters::Format::Json.new
      @time = DateTime.new.to_s
      @json = '[{"id":1,"created_at":"' + @time + '","title":"Testing","author":"Testy McTesty","comment_crazy_mapping":"Itzy Bitzy Spider"},' +
        '{"id":2,"created_at":"' + @time + '","title":"Testing 2","author":"Besty McBesty"}]'
    end
    
    it "loads a recordset from the string representation" do
      collection = @format.parse_collection(@json, Book)
      collection.should have(2).entries
      collection[0]["id"].should == 1
      collection[0]["created_at"].should == @time
      collection[0]["title"].should == "Testing"
      collection[0]["author"].should == "Testy McTesty"
      collection[0]["comment_crazy_mapping"].should == "Itzy Bitzy Spider"
      collection[1]["id"].should == 2
      collection[1]["created_at"].should == @time
      collection[1]["title"].should == "Testing 2"
      collection[1]["author"].should == "Besty McBesty"
      collection[1]["comment_crazy_mapping"].should be_nil
    end
    
    it "loads a recordset from a string represenation using a provided selector" do
      @format.collection_selector = 'forecast.txt_forecast'
      collection = @format.parse_collection(WUNDERGROUND_JSON_COLLECTION, ForecastDay)
      collection.should have(8).entries
      record = collection.first
      record["period"].should == 0 
      record["icon"].should == "partlycloudy"
      record["icon_url"].should == "http://icons-ak.wxug.com/i/c/k/partlycloudy.gif"
      record["pop"].should == "0"
      record["title"].should =="Thursday"
      record["fcttext"].should == "Partly cloudy. High of 28F. Winds from the NNW at 5 to 10 mph."
      record["fcttext_metric"].should == "Partly cloudy. High of -2C. Winds from the NNW at 5 to 15 km/h."
    end
    
    it "loads a recordset from a flock of tweets using a provided selector" do
      @format.collection_selector = 'results'
      collection = @format.parse_collection(TWITTER_JSON_COLLECTION, Tweet)
      collection.should have(15).entries
      tweet = collection.first
      tweet["id"].should == 299950023326703616
    end
    
    it "loads a recordset from a string using a selector that contains a dash and an underscore" do
      data = <<-JSON
      {"response": {
      	  "silly_forecast": {
      	    "txt-forecast": [
      		  {
        		    "period": 0,
        		    "icon": "snow",
        		    "icon_url": "http://icons-ak.wxug.com/i/c/k/snow.gif",
        		    "title": "Monday",
        		    "fcttext": "Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible.",
        		    "fcttext_metric": "Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible.",
        		    "pop": "90"
      		  }
    		  ]
  		  }
		  }
	  }
    JSON
      
      @format.collection_selector = "response.silly_forecast.txt-forecast[0]"
      collection = @format.parse_collection(data, ForecastDay)
      collection.size.should == 1
      collection.should have(1).entries
      record = collection.first
      record["period"].should == 0
  		record["icon"].should == "snow"
  		record["icon_url"].should == "http://icons-ak.wxug.com/i/c/k/snow.gif"
  		record["title"].should == "Monday"
  		record["fcttext"].should == "Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible."
  		record["fcttext_metric"].should == "Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible."
  		record["pop"].should == "90"
    end
    
    it "loads an empty recordset from a string using a selector that contains a dash and an underscore" do
      data = <<-JSON
      {"response": {
      	  "silly_forecast": {
      	    "txt-forecast": {
      	      "some-other-crazy_dash": []
      	    }
  	      }
	      }
      }
      JSON
      @format.collection_selector = "response.silly_forecast.txt-forecast.some-other-crazy_dash"
      collection = @format.parse_collection(data, ForecastDay)
      collection.should_not be_nil
      collection.should have(0).entries
    end
    
    it "loads a recordset from a crazy JSON string using the provided selector" do
      data = GANNETT_ARTICLES
      @format.collection_selector = "stories.[-0].xml.[0].article"
      collection = @format.parse_collection(data, Article)
      collection.should_not be_nil
      collection.should have(15).entries
    end
    
    # it "loads a recordset from some JSON with a duplicate ID string using the provided selector" do
    #   uri = URI("http://api.gannett-cdn.com/internal/MobileServices/MArticleService.svc/mcontent/v1/fronts/Home_Tablet?order=%7B%3Aid%3D%3E%3Aasc%7D&api_key=s5hw29fqnj6ay7c3atsmegxw&siteId=1&html=false")
    #   res = Net::HTTP.get_response(uri)
    #   data = JSON.parse(res.body)
    #   @format.collection_selector = "modules.Items.content"
    #   collection = @format.parse_collection(data, Article)
    #   collection.should_not be_nil
    #   collection.should have(41).entries
    # end
    
    it "loads a recordset from a JSON string with nested array and hash properties using the provided selector" do
      data = DNBDIRECT_JSON_COLLECTION
      @format.collection_selector = ".companyResults.*"
      collection = @format.parse_collection(data, Company)
      collection.should_not be_nil
      collection.should have(20).entries
    end
    
  end
end
