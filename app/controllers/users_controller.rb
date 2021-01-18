class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def show
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
