class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_serie, only: %i[show edit update destroy]

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
      redirect_to serie_path(@serie)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @serie.update(serie_params)
    if @serie.save
      redirect_to serie_path(@serie)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @serie.destroy
    redirect_to serie_path, status: :see_other
  end

  private

  def set_serie
    @serie = Serie.find(params[:id])
  end

  def serie_params
    params.require(:serie).permit(:name, :description, photos: [])
  end

end
