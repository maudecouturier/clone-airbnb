class BookingsController < ApplicationController

def index
    @bookings = policy_scope(Booking)
  end

  def show
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @current_user = current_user
    @flat = Flat.find(params[:flat_id])
    @booking.user = @current_user
    @booking.flat = @flat
    if @booking.save
      redirect_to user_path(@current_user)
    else
      render 'flats/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_traveler, :start_date, :end_date, :status, :flat_id)
  end


end
