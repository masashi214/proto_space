class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_edit_param)
    redirect_to action: :show
  end

  private
  def user_edit_param
    params.require(:user).permit(:user_name, :avatar, :email, :password, :member, :profile, :works)
  end
end
