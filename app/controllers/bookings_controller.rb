class BookingsController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id])
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
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
