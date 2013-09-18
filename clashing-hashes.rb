require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = 'Nicole' 
  @show_description = false
   erb :index
end 

# Post request for /twitter
post '/twitter' do
  @firstIn = params[:first_hash]
  @secondIn = params[:second_hash]
  
  
  
  erb :results
end

