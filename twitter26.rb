#!/usr/bin/env ruby

require 'rubygems'

require 'twitter'


class Newtweet
      def initialize(userinput)
        @userinput = userinput
        



        client = Twitter::REST::Client.new do |config|
          config.consumer_key        = "your consumer_key"
          config.consumer_secret     = "your consumer_secret "
          config.access_token        = "your access_token"
          config.access_token_secret = "your access_token"
        end
        print 'hello'
        client.update(@userinput)
      end


end

puts "enter your tweet:"
h = gets.chomp()
g = Newtweet.new(h)








