require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "consumer_key"
  config.consumer_secret     = "consumer_secret"
  config.access_token        = "2904850933-kSx6IqplP2d6qIL1lQMpyVTHdfDooXYlnUI4uzE"
  config.access_token_secret = "ipOihJc2vfw0eXDR4AvAX9XBHyUddsnLTuzd1RxjMyyM5"
end

client.update("I'm tweeting with @gem")
