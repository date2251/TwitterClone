class FavoritesController < ApplicationController
	before_action :require_user_logged_in

  def create
		@tweet = Tweet.find(params[:tweet_id])
		current_user.favorite(@tweet)
		flash[:success] = 'お気に入りに登録しました'
		redirect_back(fallback_location: root_path)
  end

  def destroy
		@tweet = Tweet.find(params[:tweet_id])
		current_user.unfavorite(@tweet)
		flash[:success] = 'お気に入りを解除しました'
		redirect_back(fallback_location: root_path)
  end
end
