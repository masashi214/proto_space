class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  def show
  end

  def edit
  end

  def update
    current_user.update(user_edit_param)
    redirect_to action: :show
  end

  private
  def user_edit_param
    params.require(:user).permit(:user_name, :avatar, :email, :password, :member, :profile, :works)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
