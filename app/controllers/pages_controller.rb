class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def home
    @series = Serie.all

    @serie = Serie.new
  end

end
