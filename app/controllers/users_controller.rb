class UsersController < ApplicationController
  def new
    @user = User.new
    @user.user_weaknesses.build
    @weaknesses = Weakness.all
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  private
  def user_params
    params.require(:user).permit(:name, { weakness_ids: []}, user_weaknesses_attributes: [:weakness_id])
  end
end
