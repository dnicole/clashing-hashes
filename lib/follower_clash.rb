require 'rubygems'
require 'bundler/setup'
require 'twitter'

module FollowerClash

  class User
    attr_reader :login

    def initialize(login)
      @login = login
    end

    def followers()

    end
  end

  class Comparer
    def initialize(user1, user2)
      @user1 = user1
      @user2 = user2
    end
  end

end