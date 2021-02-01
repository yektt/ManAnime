class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)
    if(@user.save)
      UserMailer.with(user: @user).welcoming.deliver_now
      session[:user_id] = @user.id
      redirect_to edit_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])

    if @user.update(edit_user_params)
      redirect_to profile_path
    else
      format.html { render :edit }
    end
  end

  def block
    user = User.find(session[:user_id])
    user.is_blocked = !user.is_blocked
    user.save!

    redirect_to profile_path
  end
  
  private

  def new_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:name, :avatar)
  end
end
