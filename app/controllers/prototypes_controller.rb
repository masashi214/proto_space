class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.page(params[:page]).per(8).order('created_at DESC')
  end

  def show
    @prototype = Prototype.find(params[:id])
    @like = current_user.likes.find_by(prototype_id: @prototype.id)
  end

  def new
    @prototype = Prototype.new
    @prototype.pictures.build
  end

  def create
    Prototype.create(create_params)
    redirect_to action: :index
  end

  private
  def create_params
    params.require('prototype').permit(
      :title, :catch_copy, :concept,
      pictures_attributes: [:file, :main]
    ).merge(user_id: current_user.id)
  end
end
