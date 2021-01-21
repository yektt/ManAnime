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
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(session[:user_id])
    logger.info('in edit')
    logger.info(@user.id)
  end

  def update
    @user = User.find(session[:user_id])
    logger.info('in update')

    if @user.update(edit_user_params)
      redirect_to profile_path
    else
      format.html { render :edit }
    end
  end

  private

  def new_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:name, :avatar_url)
  end
end
