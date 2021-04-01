class AccountController < ApplicationController
  before_action :ensure_pageowner , only: :edit

  def edit
    @user = User.find(params[:id])
    logger.info('in account edit')
    logger.info(@user.id)
  end

  def update
    @user = User.find(params[:id])
    logger.info(params[:user_id])

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
