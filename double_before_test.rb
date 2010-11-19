require 'rubygems'
require 'test/unit'
require 'rack/test'
require 'shoulda'
require './double_before'

class DoubleBeforeTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context "Access pages" do
    should "show index" do
      get '/'
      assert_equal 'Hello, Masaki Komagata', last_response.body
    end
  end
end
