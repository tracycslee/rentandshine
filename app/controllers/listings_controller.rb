class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all

    # search bar

    if params[:query].present?
      sql_query = " \ brand @@ :query \ OR detail @@ :query \ "
      @listings = Listing.where(sql_query, query: "%#{params[:query]}%")
    else
      @listings = Listing.all
    end

  end

  def show
    set_listing
    @booking = Booking.new
    @user = current_user

    # mapbox

    @marker = {
      lat: @listing.latitude,
      lng: @listing.longitude,
      image_url: helpers.asset_url('heel_marker.png')
    }

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
    if @listing.update(listing_params)
      redirect_to listings_path
    else
      redirect_to listings_path
    end
  end

  def destroy
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
    params.require(:listing).permit(:price, :detail, :brand, :size, :address, {images: []})
  end
end
