class ListsController < ApplicationController
  def index
    @movies = Movie.all
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    if @list.save
      redirect_to lists_path
    else
      render :new, :unprossesable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
