class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(serie_params)
    @serie.save
    if @serie.save
      redirect_to series_path(@serie)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @serie = Serie.find(params[:id])
    @photo = Photo.new
  end

  def edit
    @serie = Serie.find(params[:id])
  end

  def update
    @serie = Serie.find(params[:id])
    @serie.update(serie_params)
    # No need for app/views/series/update.html.erb
    redirect_to series_path(@serie)
  end

  def destroy
    @serie = Serie.find(params[:id])
    @serie.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to series_path, status: :see_other
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :description)
  end

end
