class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]
  def index
    @bands=Band.all
  end
  def new
  end

  def edit
  end

  def show
  end

  private
  def set_band
    @band = Band.find(params[:id])
  end
  def band_params
    # byebug
    params.require(:band).permit(:band_name, :band_members, :band_message)
  end

end
