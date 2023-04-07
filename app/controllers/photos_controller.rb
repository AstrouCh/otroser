class PhotosController < ApplicationController
  # def index
  #   @series = Serie.all
  # end

  # def new
  #   @serie = Serie.new
  # end

  def create
    @photo = Photo.new(photo_params)
    @photo.serie = @serie
    if @photo.save
      redirect_to serie_path(@serie)
    else
      render "series/show", status: :unprocessable_entity
      # redirect_to restaurant_path(@restaurant)
    end
  end

  # def show
  #   @serie = Serie.find(params[:id])
  #   @photo = Photo.new
  # end

  # def edit
  #   @serie = Serie.find(params[:id])
  # end

  # def update
  #   @serie = Serie.find(params[:id])
  #   @serie.update(serie_params)
  #   # No need for app/views/series/update.html.erb
  #   redirect_to serie_path(@serie)
  # end

  # def destroy
  #   @serie = Serie.find(params[:id])
  #   @serie.destroy
  #   # No need for app/views/restaurants/destroy.html.erb
  #   redirect_to series_path, status: :see_other
  # end

  private

  def photo_params
    params.require(:photo).permit(:url, :alt)
  end

end
