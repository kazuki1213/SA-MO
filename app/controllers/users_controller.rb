class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(update_params)
      flash[:success] = 'ユーザー情報を編集しました。'
      redirect_to :edit
    else
      flash.now[:danger] = 'ユーザー情報の編集に失敗しました。'
      render :edit
    end
  end

  private

  def update_params
    params.require(:user).permit(:gender, :age, :height, :weight)
  end
end
