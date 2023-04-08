class PhotosController < ApplicationController
  before_action :set_serie, only: %i[new create]

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
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  # def edit
  #   @serie = Serie.find(params[:id])
  # end

  # def update
  #   @serie = Serie.find(params[:id])
  #   @serie.update(serie_params)
  #   # No need for app/views/series/update.html.erb
  #   redirect_to serie_path(@serie)
  # end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to series_photo_path, status: :see_other
  end

  private

  def set_serie
    @serie = Serie.find(params[:serie_id])
  end

  def photo_params
    params.require(:photo).permit(:url, :alt)
  end

end
