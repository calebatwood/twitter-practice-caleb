class TweetsController < ApplicationController

  def index
    @tweets = TweetFetcher.new(params[:twitter_handle]).tweets
  end

end
