class BookingsController < ApplicationController
  def create
    set_listing
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    @booking.total_price = @listing.price

    authorize @booking

    if @booking.save
      redirect_to listing_booking_path(@listing, @booking)
    else
      render "listings/show"
    end

  end

  def show
    set_listing
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

end
