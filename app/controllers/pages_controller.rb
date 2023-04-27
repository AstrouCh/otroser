class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show otroser]

  def home
    @series = Serie.all

    @serie = Serie.new
  end

end
