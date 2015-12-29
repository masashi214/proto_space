class PrototypesController < ApplicationController
  def index
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(create_params)
    redirect_to action: :index
  end

  private
  def create_params
    params.require('prototype').permit(:title, :catch_copy, :concept)
  end
end
