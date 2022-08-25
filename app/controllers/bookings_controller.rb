class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @doll = Doll.find(params[:doll_id])
    @booking.doll = @doll
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: 'created'
    else
      render 'dolls/show', status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  

  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path, notice: 'updated'
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to bookings_path, status: :see_other
    else
      render bookings_path, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
