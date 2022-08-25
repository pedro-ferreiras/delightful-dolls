class DollsController < ApplicationController
  def index
    @dolls = Doll.all
  end

  def show
    @doll = Doll.find(params[:id])
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
    redirect_to user_path(current_user), status: :see_other
  end

  private

  def doll_params
    params.require(:doll).permit(:name, :condition, :cursed)
  end
end
