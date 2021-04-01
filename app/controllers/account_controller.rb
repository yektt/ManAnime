class AccountController < ApplicationController
  before_action :ensure_pageowner , only: :edit
  before_action :find_user

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(edit_user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def edit_user_params
    params.require(:user).permit(:name, :avatar)
  end
end
