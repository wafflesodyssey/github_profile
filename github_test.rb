
require 'minitest/autorun'
require 'minitest/pride'
require 'webmock/minitest'
require "bundler/setup"
require 'sinatra/base'
require 'rack/test'
require './github'





class TestGitHub < Minitest::Test
  include Rack::Test::Methods

  def app
    GitHub
  end

  def test_local
    response = get("/")

    assert_includes response.body, "Enter zipcode for weather"
  end



end
