class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(review_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:list).permit(:name)
  end
end
