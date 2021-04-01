class UsersController < ApplicationController
  before_action :find_user
  def new
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)
    @user.name = default_name(@user)
    if(@user.save)
      UserMailer.with(user: @user).welcoming.deliver_now
      session[:user_id] = @user.id
      redirect_to edit_account_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    if (User.exists?(id: params[:id]))
      @anime = @user.favorites.anime_list.alphabetical_order
      @manga = @user.favorites.manga_list.alphabetical_order

      for comment in Comment.all.order(created_at: :desc)
        if(comment.user.id == @user.id)
          @comment = comment
          break;
        else
          @comment = nil
        end
      end
    else
      redirect_to root_path
    end
  end
  
  def block
    if(@user.is_blocked)
      # means user is being unblocked now
      # in the future, unblocking mail will be added to this part
      @user.is_blocked = !@user.is_blocked
      @user.save!
    else
      # means user is being blocked now
      if ((params[:reason].reject &:blank?).empty?)
        flash[:error] = 'You cannot block a user without saying the reason!'
      else 
        @user.is_blocked = !@user.is_blocked
        @user.save!
        UserMailer.block_mail(@user, (params[:reason].reject &:blank?), current_user).deliver_now
      end
    end
    redirect_to @user
  end

  def admin
    @user.role = "admin"
    @user.save!
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
