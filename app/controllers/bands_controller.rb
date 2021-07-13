class BandsController < ApplicationController
  protect_from_forgery
  before_action :set_band, only: [:show, :edit, :update, :destroy]
  def index
    @bands=Band.all
  end

  def show

  end

  def new

    @band=Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to  bands_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :new
    end
  end

  def edit

  end

  private
  def set_band
    @band = Band.find(params[:id])
  end
  def band_params
    # byebug
    params.permit(:band_name, :band_members, :band_message)
  end

end
