class BandsController < ApplicationController
  protect_from_forgery
  before_action :set_band, only: %i[show edit update destroy]

  def index
    @bands = Band.all
  end

  def show; end

  def new
    @band = Band.new
    @band.user_id = current_user.id
  end

  def create
    @band = Band.new(band_params)
    @band.user_id = current_user.id
    if @band.save
      redirect_to(:bands, notice: 'Success!')
    else
      flash[:alert] = 'Save error!'
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to(:bands, notice: 'Success!')
    else
      flash[:alert] = 'Save error!'
      render :edit
    end
  end

  def destroy
    @band.destroy
    redirect_to(:bands, notice: 'Success!')
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:band_name, :band_members, :band_message, :user_id)
  end
end
