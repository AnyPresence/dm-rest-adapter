require 'pathname'

source 'http://rubygems.org'

SOURCE       = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX = SOURCE == :path ? ''                                : '.git'
DATAMAPPER   = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/datamapper'
DM_VERSION   = '~> 1.2.0'
JSON_VERSION = '~> 1.8'
JSONPATH_VERSION = '~> 0.5.4'
REST_CLIENT_VERSION = '~> 1.6'

gem 'dm-serializer', DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-serializer#{REPO_POSTFIX}", :branch => "release-1.2"

gem 'multi_json',  JSON_VERSION
gem 'json',        JSON_VERSION
gem 'json_pure',   JSON_VERSION
gem 'jsonpath', JSONPATH_VERSION

group :development do

  gem 'dm-validations', DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-validations#{REPO_POSTFIX}", :branch => "release-1.2"
  gem 'jeweler',        '~> 1.8.4'
  gem 'rake',           '~> 0.9.2'
  gem 'rspec',          '~> 1.3.2'

end

platforms :mri_18 do
  group :quality do

    gem 'rcov',      '~> 0.9.9'
    gem 'yard',      '~> 0.6'
    gem 'yardstick', '~> 0.2'

  end
end

group :datamapper do

  gem 'dm-core',      DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-core#{REPO_POSTFIX}", :branch => "release-1.2"
  gem 'rest-client',  REST_CLIENT_VERSION
  gem 'oauth', :git => "git://github.com/galois17/oauth-ruby.git", :branch => "add-rest-client"

  plugins = ENV['PLUGINS'] || ENV['PLUGIN']
  plugins = plugins.to_s.tr(',', ' ').split.uniq

  plugins.each do |plugin|
    gem plugin, DM_VERSION, SOURCE => "#{DATAMAPPER}/#{plugin}#{REPO_POSTFIX}"
  end

end

group :test do
  gem 'rspec', '~> 1.3.2'
  gem 'rspec-core', '2.11.1'
  gem 'rspec-mocks', '2.11.3'
  gem 'rspec-expectations', '2.11.3'
  gem 'debugger', '1.5.0'
  gem 'webmock'
end
  
