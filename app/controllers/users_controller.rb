class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)
    @user.name = default_name(@user)
    if(@user.save)
      UserMailer.with(user: @user).welcoming.deliver_now
      session[:user_id] = @user.id
      redirect_to edit_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])

    @anime = @user.favorites.anime_list.alphabetical_order
    @manga = @user.favorites.manga_list.alphabetical_order
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])

    if @user.update(edit_user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def block
    @user = User.find(params[:id])
    @user.is_blocked = !@user.is_blocked
    @user.save!

    redirect_to @user
  end
  
  private

  def new_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:name, :avatar)
  end

  def default_name(user)
    case 
    when ( user.email[0].downcase < 'h') then "Naruto Uzumaki"
    when ( user.email[0].downcase < 'n') then "Kaori Miyazono"
    when ( user.email[0].downcase < 'u') then "Tanjirou Kamado"
    else "Violet Evergarden"
    end
  end
end
