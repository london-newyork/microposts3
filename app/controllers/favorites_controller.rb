class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:user_id])
    current_user.favorite(user)
    flash[:success] = 'ユーザをフォローしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:user_id])
    current_user.unfavorite(user)
    flash[:success] = 'ユーザのフォローを解除しました。'
    redirect_to user
  end
end