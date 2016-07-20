require "bundler/setup"
require "sinatra/base"
require "pry"


class GitHub < Sinatra::Base

  get "/" do
    ERB.new(File.read("./views/homepage.html.erb")).result(binding)
  end






  run! if app_file == $PROGRAM_NAME
end
