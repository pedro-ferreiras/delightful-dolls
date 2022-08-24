class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    redirect_to dolls_path if current_user
    @dolls = Doll.all
  end
end
