class ListingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    @booking = Booking.new
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    @listing = Listing.new(listing_params)
    authorize @listing
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def edit
    set_listing
    authorize @listing
  end

  def update
    set_listing
    authorize @listing
    @listing.update(listing_params)
    redirect_to listing_path(@listing)
  end

  def destroy  #not tested
    set_listing
    authorize @listing
    @listing.destroy
    @user = current_user
    redirect_to users_dashboard_path(@user)
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:price, :image, :detail, :brand, :size)
  end
end
