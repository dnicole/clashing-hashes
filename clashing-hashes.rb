require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/follower_clash'

get '/' do
  @name = 'Nicole' 
  @show_description = false
   erb :index
end 

# Post request for /twitter
post '/twitter' do
  # @firstIn = params[:first_hash]
  # @secondIn = params[:second_hash]

  @user1 = FollowerClash::User.new(params["login-a"])
  @user2 = FollowerClash::User.new(params["login-b"])
  @result = FollowerClash::Comparer.new(@user1, @user2).compare

  erb :results
end

