class EnvironmentsController < ApplicationController
    protect_from_forgery
    before_action :set_environment, only: %i[show edit update destroy]

    def index
      @environments = Environment.all.order("id")
    end

    def show; end

    def new
      @environment = Environment.new

    end

    def create
      @environment = Environment.new(environment_params)

      if @environment.save
        redirect_to(:environments, notice: 'Success!')
      else
        flash[:alert] = 'Save error!'
        render :new
      end
    end

    def edit
      @environment = Environment.find(params[:id])
    end

    def update
      @environment = Environment.find(params[:id])
      if @environment.update(environment_params)
        redirect_to(:environments, notice: 'Success!')
      else
        flash[:alert] = 'Save error!'
        render :edit
      end
    end

    def destroy
      @environment.destroy
      redirect_to(:environments, notice: 'Success!')
    end

    private

    def set_environment
      @environment = Environment.find(params[:id])
    end

    def environment_params
      params.require(:environment).permit(:title1,:title2,:title3,:text)
    end

end
