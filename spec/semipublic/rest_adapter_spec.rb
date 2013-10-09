require 'spec_helper'

def default_settings
  {
    :host     => "test.tld",
    :port     => 81,
    :user     => "admin",
    :password => "secret",
    :limit_param_name => 'unlimited',
    :offset_param_name => 'nuffsaid',
    :logging_level => 'debug',
    :extra_http_headers => {:api_key => "HumptyDumpty"},
    :enable_form_urlencoded_submission => true
  }
end

describe DataMapper::Adapters::RestAdapter do
  
  before(:each) do
    @format = double("format")

    @adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[default_settings.merge(format: @format)])
    @adapter.rest_client = double("rest_client")
    @adapter.rest_client.stub(:url) { "http://example.com"}

    @response = double("response")

    DataMapper.setup(@adapter)
  end
  
  describe "#initialize" do
    before(:each) do
      class TestFormat < DataMapperRest::Format::AbstractFormat
        def generate_payload(resource)
          "<<mock format>>"
        end
      end
      @legacy_format = TestFormat.new
      @legacy_format.stub(:mime) {"application/mock"}
      @legacy_format.stub(:generate_payload) {"<<mock format>>"}
      @legacy_format.stub(:update_attributes) {double()}
      @legacy_format.stub(:parse_collection) {[]}
      @legacy_format.stub(:parse_record) {double()}
      @legacy_format.stub(:repository_name) {:test}
      @legacy_response = double("response")
      @adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[{
        :scheme   => "https",
        :host     => "test.tld",
        :port     => 81,
        :user     => "admin",
        :password => "secret",
        :format   => "TestFormat",
        :extension => "test",
        :disable_format_extension_in_request_url => true,
        :enable_form_urlencoded_submission => true
      }])
      
      @second_adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[{
        :scheme   => "https",
        :host     => "test.tld",
        :port     => 81,
        :user     => "admin",
        :password => "secret",
        :format   => "TestFormat",
        :extension => "test",
        :disable_format_extension_in_request_url => false,
        :limit_param_name => 'unlimited',
        :offset_param_name => 'nuffsaid'
      }])
      
      @legacy_adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[{
        :host     => "test.tld",
        :port     => 81,
        :user     => "admin",
        :password => "secret",
        :format   => @legacy_format,
        :prefix   => "humpty/dumpty/",
        :disable_format_extension_in_request_url => true,
        :limit_param_name => 'unlimited',
        :offset_param_name => 'nuffsaid',
        :extra_http_headers => {:content_type => "user/provided"}
      }])
      @legacy_response.stub(:code) {200}
      @legacy_response.stub(:body) {""}
      @legacy_adapter.rest_client = double("rest_client")
      @legacy_adapter.rest_client.stub(:url) { "http://example.com"}
      @legacy_adapter.rest_client.stub(:[]) { @legacy_adapter.rest_client }
      @legacy_adapter.rest_client.stub(:get) {@legacy_response}
      @legacy_adapter.rest_client.stub(:post) {@legacy_response}
      @legacy_adapter.rest_client.stub(:put) {@legacy_response}
      @legacy_adapter.rest_client.stub(:delete) {@legacy_response}
      
      @store1  = Store.new(
        :name => "DataMapperStore",
        :phone => "1-800-DONT-CALL",
        :latitude => 39.7392,
        :longitude => 104.9842
      )
      @store2 = Store.new(
        :name => "Legacy Store",
        :phone => "1-800-222-3333",
        :street => "4922 Seminary Road",
        :city => "Denver",
        :state => "CO",
        :latitude => 39.7391,
        :longitude => 104.9841
      )
      
      @resources = [ @store1, @store2 ]
      @resource = @store1
    end

    it "prepares a RestClient::Resource for the URI of the REST service" do
      @adapter.rest_client.url.to_s.should == "https://admin:secret@test.tld:81"
    end
    
    it "supports loading a format from a class name" do
      @adapter.format.should be_kind_of(TestFormat)
    end
    
    it "prepares a RestClient::Resource for the URI of the REST service with format extensions if they are not disabled" do
      @second_adapter.format.extension.should == "test"
    end
    
    it "prepares a RestClient::Resource for the URI of the REST service without format extensions if they are disabled" do
      @legacy_adapter.format.extension.should be_nil
    end
    
    it "should ask the format for the path to each Model" do
      @legacy_format.should_receive(:resource_path).with(:model => 'Store__c')
      @legacy_adapter.create([@store1])
    end
    
    it "be able to parse extra headers as hash" do
      format = double("format")
      adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[{
        :host     => "test.tld",
        :port     => 81,
        :user     => "admin",
        :password => "secret",
        :format   => format,
        :limit_param_name => 'unlimited',
        :offset_param_name => 'nuffsaid',
        :logging_level => 'debug',
        :extra_http_headers => {:api_key => "HumptyDumpty"},
        :enable_form_urlencoded_submission => true
      }])
      adapter.rest_client = double("rest_client")
      adapter.rest_client.stub(:url) { "http://example.com"}

      DataMapper.setup(adapter)      
      adapter.instance_variable_get("@extra_headers")[:api_key].should == "HumptyDumpty"
    end
    
    it "be able to parse extra headers as string" do
      format = double("format")
      headers = {:api_key => "HumptyDumpty"}.to_json
      adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[{
        :host     => "test.tld",
        :port     => 81,
        :user     => "admin",
        :password => "secret",
        :format   => format,
        :limit_param_name => 'unlimited',
        :offset_param_name => 'nuffsaid',
        :logging_level => 'debug',
        :extra_http_headers => headers,
        :enable_form_urlencoded_submission => true
      }])
      adapter.rest_client = double("rest_client")
      adapter.rest_client.stub(:url) { "http://example.com"}

      DataMapper.setup(adapter)      
      adapter.instance_variable_get("@extra_headers")[:api_key].should == "HumptyDumpty"
    end
    
  end

  describe "#create" do
    
    describe "when provided a Resource" do
      before(:each) do
        @hash = {
          :id => 333,
          :created_at => DateTime.parse("2009-05-17T22:38:42-07:00"),
          :title => "DataMapper",
          :author => "Dan Kubb?"
        }
        @resource  = Book.new(@hash)
        @resources = [ @resource ]
        @a_format = DataMapperRest::Format::Json.new(:enable_form_urlencoded_submission => true)
      end

      it "should ask the format for the path to each Model" do
        @format.should_receive(:resource_path).with(:model => "livre")
        @format.should_receive(:accept).and_return("application/mock")
        stub_mocks!
        @adapter.create(@resources)
      end

      it "should query the resource path" do
        @format.stub(:resource_path) { "books.mock" }
        @format.should_receive(:accept).and_return("application/mock")
        @adapter.rest_client.should_receive(:[]).with("books.mock").and_return(@adapter.rest_client)
        stub_mocks!
        @adapter.create(@resources)
      end

      it "should ask the format to serialize each Resource" do
        @format.should_receive(:generate_payload).with(@resource)
        @format.should_receive(:accept).and_return("application/mock")
        stub_mocks!
        @adapter.create(@resources)
      end

      it "should POST the serialized Resource to the resource path" do
        @adapter.format = @a_format
        hash = @hash.merge({:comment_crazy_mapping => nil})
        @adapter.rest_client.should_receive(:post).with(
          { :livre => hash }, 
          {:accept=>"application/json", :content_type=>"www-form-urlencoded", :api_key=>"HumptyDumpty"}
        ).and_return(@response)
        stub_mocks!
        @adapter.create(@resources)
        @adapter.format = @format
      end

      it "should ask the format to update the resource with the response" do
        @response.should_receive(:body) { "<<a useless format>>" }
        @format.should_receive(:update_attributes).with(@resource, "<<a useless format>>")
        @format.should_receive(:accept).and_return("application/mock")
        stub_mocks!
        @adapter.create(@resources)
      end

      it "should return an Array of the records" do
        @format.should_receive(:accept).and_return("application/mock")
        stub_mocks!
        @adapter.create(@resources).should eql @resources
      end
    end
  end

  describe "#read" do
    
    context "with unscoped query" do
      before(:each) do
        @query = Book.all.query
        @resources = [ {} ]
        @format.should_receive(:accept).and_return("application/mock")
      end

      it "should ask the format for the resource path" do
        @format.should_receive(:resource_path).with({:model => "livre"})
        stub_mocks!
        @adapter.read(@query)
      end

      it "should query the resource path" do
        @format.stub(:resource_path) { "books.mock" }
        @adapter.rest_client.should_receive(:[]).with("books.mock").and_return(@adapter.rest_client)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should use GET" do
        @adapter.rest_client.should_receive(:get).with(
          {:accept=>"application/mock", :api_key=>"HumptyDumpty", :params=>{:order=>{:id=>:asc}}}
        ).and_return(@response)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should delegate to the Format to parse the response" do
        @response.should_receive(:body).twice { "<<a collection>>" }
        @format.should_receive(:parse_collection).with("<<a collection>>", Book).and_return(@resources)
        stub_mocks!
        @adapter.read(@query).should eql @resources
      end
    end

    context "with query scoped by a key" do
      before(:each) do
        @query = Book.all(:id => 1, :limit => 1, :order => [:author.desc]).query
        @record  = {
          "id" => 1,
          "created_at" => DateTime.parse("2009-05-17T22:38:42-07:00"),
          "title" => "DataMapper",
          "author" => "Dan Kubb"
        }
        @record2  = {
          "id" => 2,
          "created_at" => DateTime.parse("2009-05-17T22:38:44-07:00"),
          "title" => "Humpty Dumpty",
          "author" => "Shaniquah"
        }
        @records = [ @record, @record2 ]
        @format.should_receive(:accept).and_return("application/mock")
      end

      it "should ask the format for the resource path using the key" do
        @format.should_receive(:resource_path).with(:model => "livre", :key => 1)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should query the resource path" do
        @format.stub(:resource_path) { "livres/1.mock" }
        @adapter.rest_client.should_receive(:[]).with("livres/1.mock").and_return(@adapter.rest_client)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should use GET" do
        @adapter.rest_client.should_receive(:get).with(
          {:accept=>"application/mock", :api_key=>"HumptyDumpty"}
          ).and_return(@response)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should delegate to the Format to parse the response" do
        @response.should_receive(:body) { "<<a resource>>" }
        @format.should_receive(:parse_record).with("<<a resource>>", Book).and_return(@record)
        stub_mocks!
        @adapter.read(@query).should eql [@record]
      end

      it "gracefully returns an empty collection on 404" do
        @adapter.rest_client.should_receive(:get).and_raise(RestClient::ResourceNotFound)
        stub_mocks!
        @adapter.read(@query).should be_empty
      end
    end
    
    context "with query param wrapping" do      
      
      def setup_for_query_param(settings)
        @format = double("format")
        @query = Book.all(:author => "Dan Kubb", :comment => "garbage", :order => [:title.asc, :author.desc, :comment.asc]).query
        @record  = {
          "id" => 1,
          "created_at" => DateTime.parse("2009-05-17T22:38:42-07:00"),
          "title" => "DataMapper",
          "author" => "Dan Kubb",
          "comment" => "garbage"
        }
        @record2  = {
          "id" => 2,
          "created_at" => DateTime.parse("2009-05-17T22:38:41-07:00"),
          "title" => "DataStuffer",
          "author" => "Dan Kubb",
          "comment" => "garbage"
        }
        @records = [ @record, @record2 ]
        @adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[settings.merge(format: @format)])
        @adapter.rest_client = double("rest_client")
        @adapter.rest_client.stub(:url) { "http://example.com"}

        @response = double("response")

        DataMapper.setup(@adapter)
        @format.should_receive(:accept).and_return("application/mock")
      end
      
      context "with only query wrapping" do
        def query_param_settings
          {
            :host     => "test.tld",
            :port     => 81,
            :user     => "admin",
            :password => "secret",
            :limit_param_name => 'unlimited',
            :offset_param_name => 'nuffsaid',
            :logging_level => 'debug',
            :extra_http_headers => {:api_key => "HumptyDumpty"},
            :enable_query_param_as_uri_encoded_json_hash => false,
            :query_wrap_param => "query",
            :enable_form_urlencoded_submission => true
          }
        end
        
        it "should query the resource path with params wrapped with query param name" do
          setup_for_query_param(query_param_settings)
          @format.stub(:resource_path) { "books.mock" }
          @adapter.rest_client.should_receive(:[]).with("books.mock?query%5Bauthor%5D=Dan%20Kubb&query%5Bcomment_crazy_mapping%5D=garbage").and_return(@adapter.rest_client)
          stub_mocks!
          @adapter.read(@query)
        end
      end
      
      context "uri encode json hash" do
        def query_param_settings
          {
            :host     => "test.tld",
            :port     => 81,
            :user     => "admin",
            :password => "secret",
            :limit_param_name => 'unlimited',
            :offset_param_name => 'nuffsaid',
            :logging_level => 'debug',
            :extra_http_headers => {:api_key => "HumptyDumpty"},
            :enable_query_param_as_uri_encoded_json_hash => true,
            :query_wrap_param => "query",
            :enable_form_urlencoded_submission => true
          }
        end
        
        def query_param_settings_no_uri_encoding_of_json_hash
          {
            :host     => "test.tld",
            :port     => 81,
            :user     => "admin",
            :password => "secret",
            :limit_param_name => 'unlimited',
            :offset_param_name => 'nuffsaid',
            :logging_level => 'debug',
            :extra_http_headers => {:api_key => "HumptyDumpty"},
            :enable_query_param_as_uri_encoded_json_hash => true,
            :query_wrap_param => "",
            :enable_form_urlencoded_submission => true
          }
        end
        
        it "should query the resource path with params appended with uri encoded json hash" do
          setup_for_query_param(query_param_settings)
          @format.stub(:resource_path) { "books.mock" }
          @adapter.rest_client.should_receive(:[]).with("books.mock?query=%7B%22author%22%3A%22Dan%20Kubb%22%2C%22comment_crazy_mapping%22%3A%22garbage%22%7D").and_return(@adapter.rest_client)
          stub_mocks!
          @adapter.read(@query)
        end
        
        it "should query the resource path with params appended with uri encoded json raw" do
          setup_for_query_param(query_param_settings_no_uri_encoding_of_json_hash)
          @format.stub(:resource_path) { "books.mock" }
          @adapter.rest_client.should_receive(:[]).with("books.mock?%7B%22author%22:%22Dan%20Kubb%22,%22comment_crazy_mapping%22:%22garbage%22%7D").and_return(@adapter.rest_client)
          stub_mocks!
          @adapter.read(@query)
        end
      end
    end

    context "with query scoped by a non-key" do
      before(:each) do
        @query = Book.all(:author => "Dan Kubb", :comment => "garbage", :order => [:title.asc, :author.desc, :comment.asc]).query
        @query2 = Book.all(:author => "Dan Kubb").query
        @record  = {
          "id" => 1,
          "created_at" => DateTime.parse("2009-05-17T22:38:42-07:00"),
          "title" => "DataMapper",
          "author" => "Dan Kubb",
          "comment" => "garbage"
        }
        @record2  = {
          "id" => 2,
          "created_at" => DateTime.parse("2009-05-17T22:38:41-07:00"),
          "title" => "DataStuffer",
          "author" => "Dan Kubb",
          "comment" => "garbage"
        }
        @records = [ @record, @record2 ]
        @format.should_receive(:accept).and_return("application/mock")
      end

      it "should ask the format for the resource path" do
        @format.should_receive(:resource_path).with({:model => "livre"})
        stub_mocks!
        @adapter.read(@query)
      end

      it "should query the resource path with params appended" do
        @format.stub(:resource_path) { "books.mock" }
        @adapter.rest_client.should_receive(:[]).with("books.mock?author=Dan%20Kubb&comment_crazy_mapping=garbage").and_return(@adapter.rest_client)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should use GET with the conditions appended as params" do
        @adapter.rest_client.should_receive(:get).with(
          {:accept=>"application/mock", :api_key=>"HumptyDumpty", 
            :params=>{:order=>{:title=>:asc, :author=>:desc, :comment_crazy_mapping=>:asc}, :author=>"Dan Kubb", :comment_crazy_mapping=>"garbage"}
          }
        ).and_return(@response)
        stub_mocks!
        @adapter.read(@query)
      end

      it "should delegate to the Format to parse the response" do
        @response.should_receive(:body).twice { "<<a collection>>" }
        @format.should_receive(:parse_collection).with("<<a collection>>", Book).and_return(@records)
        stub_mocks!
        @adapter.read(@query2).should eql @records
      end
      
    end
  end

  describe "#update" do
    before(:each) do
      @resource  = Book.new(
        :id => 1,
        :created_at => DateTime.parse("2009-05-17T22:38:42-07:00"),
        :title => "DataMapper",
        :author => "Dan Kubb"
      )
      @resources = [ @resource ]
      @format.should_receive(:accept).and_return("application/mock")
    end

    it "should ask the format for the resource path using the key" do
      @format.should_receive(:resource_path).with(:model => "livre", :key => 1)
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources)
    end

    it "should query the resource path" do
      @format.stub(:resource_path) { "books/1.mock" }
      @adapter.rest_client.should_receive(:[]).with("books/1.mock").and_return(@adapter.rest_client)
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources)
    end

    it "should ask the Format to serialize each Resource" do
      @format.should_receive(:generate_payload).with(@resource)
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources)
    end

    it "should PUT the serialized Resource to the path" do
      @format.stub(:generate_payload) { "<<a useless format>>" }
      @adapter.rest_client.should_receive(:put).with(
        "<<a useless format>>", {:accept=>"application/mock", :content_type=>"application/mock", :api_key=>"HumptyDumpty"}
      ).and_return(@response)
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources)
    end

    it "should return the number of updated Resources" do
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources).should == 1
    end

    it "should modify the resource" do
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources)
      @resource.author.should == "John Doe"
    end

    it "should ask the format to update the resource with the response" do
      @response.should_receive(:body).and_return { "<<a useless format>>" }
      @format.should_receive(:update_attributes).with(@resource, "<<a useless format>>")
      stub_mocks!
      @adapter.update({ Book.properties[:author] => "John Doe" }, @resources)
    end
  end

  describe "#delete" do
    before(:each) do
      @resource  = Book.new(
        :id => 1,
        :created_at => DateTime.parse("2009-05-17T22:38:42-07:00"),
        :title => "DataMapper",
        :author => "Dan Kubb"
      )
      @resources = [ @resource ]
      @format.should_receive(:accept).and_return("application/mock")
    end

    it "should ask the format for the resource path using the key" do
      @format.should_receive(:resource_path).with(:model => @resource.model.storage_name(@resource.model.repository_name), :key => 1)
      stub_mocks!
      @adapter.delete(@resources)
    end

    it "should query the resource path" do
      @format.stub(:resource_path) { "books/1.mock" }
      @adapter.rest_client.should_receive(:[]).with("books/1.mock").and_return(@adapter.rest_client)
      stub_mocks!
      @adapter.delete(@resources)
    end

    it "should DELETE the resource from the path" do
      @adapter.rest_client.should_receive(:delete).with(
      { :accept => "application/mock", :api_key=>"HumptyDumpty"}
      ).and_return(@response)
      stub_mocks!
      @adapter.delete(@resources)
    end

    it "should return the number of deleted Resources" do
      stub_mocks!
      @adapter.delete(@resources).should == 1
    end
  end

  describe "one-to-one relationship" do
    before(:each) do
      @book = DifficultBook.new(
        :id => 1,
        :title => "DataMapper",
        :author => "Dann Kubb"
      )
      @book.persistence_state = DataMapper::Resource::PersistenceState::Persisted.new(@book)
      @format.should_receive(:accept).and_return("application/mock")
    end

    describe "#read" do
      it "should fetch the resource with the parent ID and an overridden limit and offset with order by clauses" do
        @format.should_receive(:resource_path).with({ :model => "book_covers" })
        @adapter.rest_client.should_receive(:get).with(
          {:accept=>"application/mock", :api_key=>"HumptyDumpty", 
            :params=>{:unlimited=>1, :nuffsaid=>0, :order=>{:id=>:asc}, :book_id=>1}}
        ).and_return(@response)
        stub_mocks!
        DataMapper.repository(:test) { @book.cover } # no idea why this doesn't work!
      end
    end
  end

  describe "many-to-one relationship" do
    before(:each) do
      @resource  = DifficultBook.new(
        :id => 5,
        :title => "DataMapper",
        :author => "Dann Kubb",
        :publisher_id => 9
      )
      @resource.persistence_state = DataMapper::Resource::PersistenceState::Persisted.new(@resource)
      @publisher  = Publisher.new(
        :id => 9,
        :created_at => DateTime.parse("2009-05-17T22:38:42-07:00"),
        :name => "Dan's Kubblishings"
      )
      @publisher.persistence_state = DataMapper::Resource::PersistenceState::Persisted.new(@publisher)
      @format.should_receive(:accept).and_return("application/mock")
    end

    describe "#read" do
      it "should fetch the resource with the parent ID" do
        @format.should_receive(:resource_path).with({ :model => "publishers", :key => 9 })
        @format.stub(:parse_record) {@publisher}
        @format.stub(:mime) {"application/mock"}
        @adapter.rest_client.stub(:[]) { @adapter.rest_client }
        @adapter.rest_client.stub(:get) { @response }
        @response.stub(:get) { @response }
        @response.stub(:code) {200}
        @response.stub(:body) {""}
        DataMapper.repository(:test) { @resource.publisher }
      end
    end
  end

  describe "one-to-many relationship" do
    before(:each) do
      @book = DifficultBook.new( :id => 1, :title => "DataMapper", :author => "Dann Kubb" )
      @query = @book.chapters.query
      @format.should_receive(:accept).and_return("application/mock")
    end

    describe "#read" do
      it "should fetch the resource by passing the key as a query parameter" do
        @format.should_receive(:resource_path).with({ :model => "chapters" })
        rest_client = double("rest_client")
        @adapter.rest_client.should_receive(:[]).and_return(rest_client)

        rest_client.should_receive(:get).with(
          {:accept=>"application/mock", :api_key=>"HumptyDumpty", :params=>{:order=>{:id=>:asc}, :book_id=>1}}
        ).and_return(@response)
        stub_read_mocks!(rest_client)
        @adapter.read(@query)
      end
    end
  end

  describe "nested resource paths" do
    before(:each) do
      @publisher  = Publisher.new(
        :id => 1,
        :created_at => DateTime.parse("2009-05-17T22:38:42-07:00"),
        :name => "Dan's Kubblishings"
      )
      @publisher.persistence_state = DataMapper::Resource::PersistenceState::Persisted.new(@publisher)
      @format.should_receive(:accept).and_return("application/mock")
    end

    describe "#read" do
      before(:each) { @query = @publisher.books.query }
      
      it "should provide the nested resource information to #resource_path" do
        @format.should_receive(:resource_path).with({ :model => Publisher, :key => 1 }, { :model => "booksies" })
        stub_mocks!
        @adapter.read(@query)
      end
    end

    describe "#create" do
      before(:each) do
        @resource  = DifficultBook.new(
          :title => "DataMapper",
          :author => "Dan Kubb",
          :publisher => @publisher
        )
        @resources = [ @resource ]
      end

      it "should provide the nested resource information to #resource_path" do
        @format.should_receive(:resource_path).with({ :model => Publisher, :key => 1 }, { :model => "booksies" })
        stub_mocks!
        @adapter.create(@resources)
      end
    end

    describe "#update" do
      before(:each) do
        @resource  = DifficultBook.new(
          :id => 2,
          :title => "DataMapper",
          :author => "Dan Kubb",
          :publisher => @publisher
        )
        @resources = [ @resource ]
      end

      it "should provide the nested resource information to #resource_path" do
        @format.should_receive(:resource_path).with({ :model => Publisher, :key => 1 }, { :model => "booksies", :key => 2 })
        stub_mocks!
        @adapter.update({ DifficultBook.properties[:author] => "Chris Corbyn" }, @resources)
      end
    end

    describe "#delete" do
      before(:each) do
        @resource  = DifficultBook.new(
          :id => 2,
          :title => "DataMapper",
          :author => "Dan Kubb",
          :publisher => @publisher
        )
        @resources = [ @resource ]
      end

      it "should provide the nested resource information to #resource_path" do
        @format.should_receive(:resource_path).with({ :model => Publisher, :key => 1 }, { :model => "booksies", :key => 2 })
        stub_mocks!
        @adapter.delete(@resources)
      end
    end
  end
  
  describe "deeply nested resource paths" do
    before(:each) do
      @book = DifficultBook.new(
        :id => 1,
        :publisher_id => 2,
        :title => "DataMapper",
        :created_at => DateTime.parse("2009-05-17T22:38:42-07:00"),
        :author => "Dann Kubb"
      )
      @book.persistence_state = DataMapper::Resource::PersistenceState::Persisted.new(@book)
      @query = @book.vendors.query
      @format.should_receive(:accept).and_return("application/mock")
    end
    
    it "should walk the object tree and pass all nested resource information to #resource_path" do
      @format.should_receive(:resource_path).with(
        { :model => Publisher, :key => 2 },
        { :model => DifficultBook, :key => 1 },
        { :model => "vendors" }
      )
      stub_mocks!
      @adapter.read(@query)
    end
  end
  
  describe "authenticate using omniauth version 1" do
    
    before(:each) do
      @format = double("format")
      @format.stub(:extension=)
      @format.stub(:accept).and_return("text/json")
      
      @adapter = DataMapper::Adapters::RestAdapter.new(:test, DataMapper::Mash[{
        :scheme   => "https",
        :host     => "test.tld",
        :port     => 81,
        :user     => "admin",
        :password => "secret",
        :format   => @format,
        :extension => "test",
        :auth_scheme => "omniauth_ver_1",
        :omniauth_ver_1_consumer_key => "12345",
        :omniauth_ver_1_private_key => FAKE_PRIVATE_KEY,
        :disable_format_extension_in_request_url => true,
        :enable_form_urlencoded_submission => true
      }])
    end
    
    describe "#read" do
      context "with unscoped query" do
        before(:each) do
          @query = Book.all.query
          @resources = [ {} ]
          @format.should_receive(:accept).and_return("application/mock")
        end

        it "should authenticate with omniauth" do
          @format.should_receive(:resource_path).with({:model => "livre"})
          rest_client = double("rest_client")
          @adapter.rest_client.should_receive(:[]).and_return(rest_client)
          rest_client.should_receive(:get).with do |*args|
            options = args.pop            
                    
            options["Authorization"].to_s.should =~ /oauth_signature_method="RSA-SHA1"/
            options["Authorization"].to_s.should =~ /oauth_consumer_key="12345"/
            options["Authorization"].to_s.should =~ /oauth_signature=".+?"/
          end.and_return(@response)

          stub_read_mocks!(rest_client)

          @adapter.read(@query)
        end
      end
    end
  end
  
  def stub_read_mocks!(rest_client = nil)
    rest_client = rest_client || double("rest_client")
    stub_mocks!
    stub_formats!
    stub_codes!
    
    @adapter.rest_client.stub(:[]).and_return(rest_client)
    rest_client.stub(:url).and_return("http://example.com")
    rest_client.stub(:get).and_return(@response)
  end
  
  def stub_mocks!
    stub_formats!
    
    {
      :[] => @adapter.rest_client,
      :get => @response,
      :post => @response,
      :put => @response,
      :delete => @response,
      :url => "http://example.com"
    }.each_pair { |meth, ret| @adapter.rest_client.stub(meth) { ret } unless @adapter.rest_client.respond_to?(meth) }

    stub_codes!
  end
  
  def stub_formats!
    {
      :resource_path => "mock",
      :mime => "application/mock",
      :generate_payload => "<<mock format>>",
      :update_attributes => double(),
      :parse_collection => [],
      :parse_record => double()
    }.each_pair { |meth, ret| @format.stub(meth) { ret } unless @format.respond_to?(meth) }    
  end
  
  def stub_codes!
    {
      :code => 200,
      :body => ""
    }.each_pair { |meth, ret| @response.stub(meth) { ret } unless @response.respond_to?(meth) }
  end
end
