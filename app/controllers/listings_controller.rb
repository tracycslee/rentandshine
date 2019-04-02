class ListingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    @listing = Listing.find(params[:id])
    authorize @listing
    @listing.user = current_user
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:price, :image, :detail, :brand, :size)
  end
end
