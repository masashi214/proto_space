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
    @prototype = current_user.prototypes.new(create_params)
    if @prototype.save
      redirect_to :root, notice: "Prototypeを作成しました"
    else
      render :new
    end
  end

  private
  def create_params
    tag_list = params[:prototype][:tag_list].join(",")
    params
      .require('prototype')
      .permit( :title, :catch_copy, :concept, :tag_list, pictures_attributes: [:file, :main],
    ).merge(user_id: current_user.id, tag_list: tag_list)
  end
end
