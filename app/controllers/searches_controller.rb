class SearchesController < ApplicationController

  def new
    @search = Search.new
    @mentries = Mentry.all
  end

  def create
    @search = Search.create(search_params)
    # do UJS stuff here instead of re-directing... ?
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end


  private

  def search_params
    params.require(:search).permit(:start_date, :end_date)
  end
end
