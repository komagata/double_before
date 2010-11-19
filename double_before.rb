require 'rubygems'
require 'sinatra'

before do
  @name = 'Masaki'
end

before do
  @name += ' Komagata'
end

get '/' do
  "Hello, #{@name}"
end
