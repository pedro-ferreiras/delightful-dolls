class DollsController < ApplicationController
  def index
    @dolls = Doll.all
  end

  def show
    @doll = Doll.find(params[:id])
  end
end
