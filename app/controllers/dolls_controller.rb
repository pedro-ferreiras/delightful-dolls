class DollsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = <<~SQL
        dolls.name @@ :query
        OR dolls.condition @@ :query
        OR dolls.description @@ :query
      SQL
      @dolls = Doll.where(sql_query, query: "%#{params[:query]}%")
    else
      @dolls = Doll.all
    end




  end

  def show
    @doll = Doll.find(params[:id])
    @booking = Booking.new
  end

  def new
    @doll = Doll.new
  end

  def create
    @doll = Doll.new(doll_params)
    @doll.user = current_user
    if @doll.save
      redirect_to doll_path(@doll)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @doll = Doll.find(params[:id])
    @doll.destroy
    redirect_to my_profile_path, status: :see_other
  end

  private

  def doll_params
    params.require(:doll).permit(:name, :condition, :description, :photo, :cursed)
  end
end
