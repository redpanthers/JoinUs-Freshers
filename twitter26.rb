#!/usr/bin/env ruby

require 'rubygems'

require 'twitter'


class Newtweet
      def initialize(userinput)
        @userinput = userinput
        



        client = Twitter::REST::Client.new do |config|
          config.consumer_key        = "gMRkW6R7iQSlX61bjmP2UVxeY"
          config.consumer_secret     = "sYKVufMQGQu3KzfYZAuKLM05VGxijB7kuCARSoRNyBeSblzJ2c"
          config.access_token        = "1341053089-GFWTYD9RI3tJZPzHWdYgmkUg6dIQfDxeHZyiYnK"
          config.access_token_secret = "hArQyA7blmVDsqmDrKhwXQSxu617pyX98GXsCIjQhgFK5"
        end
        print 'hello'
        client.update(@userinput)
      end


end

puts "enter your tweet:"
h = gets.chomp()
g = Newtweet.new(h)








