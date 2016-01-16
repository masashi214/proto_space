class LikesController < ApplicationController
  before_action :like_params, only: [:create, :destroy]
  # like
  def create
    @like.save
    redirect_to :back
  end

  # unlike
  def destroy
    Like.find(params[:id]).destroy
    redirect_to :back
  end

  private
  def like_params
    @like = current_user.likes.build(prototype_id: params[:prototype_id])
  end
end
