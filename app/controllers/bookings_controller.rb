class BookingsController < ApplicationController
  before_action :set_bookings, only: [:edit, :update, :destroy]
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
  end

  def update
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: 'updated'
    else
      render bookings_path, status: :unprocessable_entity
    end
  end

  def destroy
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

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
