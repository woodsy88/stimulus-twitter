class UsersController < ApplicationController
  before_action :set_user, only: [:show, :follow]

  def index
    @users = User.all
  end

  def show
    @follow = Follow.new
  end

  def follow
    p params
    @follow = Follow.create!(follower_id: current_user.id, followed_user_id: params[:id])
    p @follow
    @follow.save
    redirect_to users_path
  end

private

  def set_user 
    @user = User.find(params[:id])
  end

end