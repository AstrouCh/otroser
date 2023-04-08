class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(serie_params)
    @serie.save!
    if @serie.save
      redirect_to root_path
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
    if @serie.save!
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @serie = Serie.find(params[:id])
    @serie.destroy
    redirect_to serie_path, status: :see_other
  end

  private

  def set_serie
    @serie = Serie.find(params[:id])
  end

  def serie_params
    params.require(:serie).permit(:name, :description)
  end

end
