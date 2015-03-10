class TweetsController < ApplicationController

  def index
    if params[:twitter_handle]
      @tweets = TweetFetcher.new(params[:twitter_handle]).tweets
    end
    if params[:follower]
      @followers = TweetFetcher.new(params[:follower]).followers
    end
    if params[:follow]
      @follow = TweetFetcher.new(params[:follow]).follow
    end
    if params[:new_tweet]
      @new_tweet = TweetFetcher.new(params[:new_tweet]).new_tweet
    end
    if params[:mentions]
      @mentions = TweetFetcher.new(:twitter_handle).mentions
    end
  end

end
