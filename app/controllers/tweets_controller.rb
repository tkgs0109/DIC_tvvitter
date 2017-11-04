class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  after_action :update_tweet, only: [:edit, :update]
  
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to tweets_path, notice: "ツイートを作成しました!"
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @tweet.update(tweet_params)
      redirect_to tweets_path, notice: "ツイートを編集しました!"
    else
      render 'edit'
    end
  end
  
  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "ツイートを削除しました!"
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:title, :content)
  end
  
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
  
  def update_tweet
    @tweet.save
  end
end
