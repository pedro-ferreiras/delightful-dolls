class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @doll = Doll.find(params[:doll_id])
    @booking.doll = @doll
    @booking.user = current_user

    if @booking.save
      redirect_to doll_path(@doll), notice: 'created'
    else
      render 'dolls/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
