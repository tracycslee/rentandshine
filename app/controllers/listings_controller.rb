class ListingsController < ApplicationController
  def index
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image)
  end
end
