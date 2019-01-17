class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(tweet_id: params[:tweet.id])
    favorite.save
    redirect_to tweets_path
  end

  def destroy
    favorite = Favorite.find_by(tweet_id: params[:tweet.id], user_id: current_user.id)
    favorite.destroy
    redirect_to tweets_path
  end
end
