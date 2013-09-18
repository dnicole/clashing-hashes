require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = 'Nicole' 
  @show_description = false
   erb :index
end 
