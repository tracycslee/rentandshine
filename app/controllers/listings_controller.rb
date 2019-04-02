class ListingsController < ApplicationController
  def index
  end

  def show
    authorize @listing
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    authorize @listing
  end

  def edit

  end

  def update
  end

  def destroy
  end
end
