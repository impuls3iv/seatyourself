class SearchesController < ApplicationController

  def new
    @search = Search.new
    categories
  end

  def create
    @search = Search.new(search_params)
    # binding.pry
    if @search.save
      redirect_to @search
    else
      categories
      render :new
    end
  end

  def show
    @search = Search.find(params[:id])
  end


  private

  def search_params
    params.require(:search).permit(:category, :min_price, :max_price, :people, :time, :hour)
  end

  def categories
    @categories = Restaurant.uniq.pluck(:category)
  end

end
