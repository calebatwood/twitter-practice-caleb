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

  def followers
    @client.followers(@twitter_handle)
  end

  def follow
    @client.follow(@twitter_handle)
  end

  def new_tweet
    @client.update(@twitter_handle)
  end

  def mentions
    @client.mentions_timeline
  end

end
