require 'minitest/autorun'
require 'minitest/pride'
require 'webmock/minitest'
require  'sinatra/test'
require './github'





class TestGitHub < Minitest::Test
  include RACK::TEST::METHODS

  def app
    GitHub
  end

  def test_local
    assert true
  end
end
