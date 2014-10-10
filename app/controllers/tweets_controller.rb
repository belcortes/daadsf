class TweetsController < ApplicationController

  def index
    @tweets = Tweet.where.not(lat: nil)
    respond_to do |format|
      format.html
      format.json { render json: @tweets }
    end
  end
  
end