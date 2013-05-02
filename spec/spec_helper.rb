$LOAD_PATH << File.expand_path('../..',__FILE__)

require 'greeby'

require 'sinatra'
require "rspec"
require "rack/test"

ENV['RACK_ENV'] = 'test'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Greeby
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

