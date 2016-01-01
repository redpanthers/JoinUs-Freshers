require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "4Q2wVbM6q9Tt5YLGy3D9D8RVV"
  config.consumer_secret     = "qfMjb2ZjrgPgFIKxBBvLQIW33skWKVkxgu41SZJ9nMyPcf5RbB"
  config.access_token        = "2904850933-kSx6IqplP2d6qIL1lQMpyVTHdfDooXYlnUI4uzE"
  config.access_token_secret = "ipOihJc2vfw0eXDR4AvAX9XBHyUddsnLTuzd1RxjMyyM5"
end

client.update("I'm tweeting with @gem")
