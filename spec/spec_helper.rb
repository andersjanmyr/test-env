$LOAD_PATH.unshift File.dirname(__FILE__)
$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'

require 'rack/test'
require 'support/struct_matcher'
require 'test-env'


class Test::Env::App
  set :environment, :test
end


RSpec.configure do |c|
  c.mock_with :rspec
  c.include Rack::Test::Methods
  c.include Matchers
end
