class TweetFetcher

  def initialize(twitter_handle)
    @twitter_handle = twitter_handle
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_KEY"]
      config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
    end
  end

  def tweets
    @client.user_timeline(@twitter_handle)
  end

end
