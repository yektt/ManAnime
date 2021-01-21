class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)
    if(@user.save)
      session[:user_id] = @user.id
      redirect_to edit_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  private

  def new_user_params
    params.require(:user).permit(:email, :password)
  end
end
