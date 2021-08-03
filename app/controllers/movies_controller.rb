class MoviesController < ApplicationController
  protect_from_forgery
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.all
  end

  def show; end

  def new
    @movie = Movie.new
    @movie.user_id = current_user.id
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
    if @movie.save
      redirect_to(:movies, notice: 'Success!')
    else
      flash[:alert] = 'Save error!'
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to(:movies, notice: 'Success!')
    else
      flash[:alert] = 'Save error!'
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to(:movies, notice: 'Success!')
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title,:content, :user_id)
  end
end
