require "bundler/setup"
require "sinatra/base"
require "pry"


class GitHub < Sinatra::Base

  get "/" do
    "Welcome"
  end






  run! if app_file == $PROGRAM_NAME
end
