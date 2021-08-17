class HomeController < ApplicationController
  def index
    @movies = Movie.all.order("id DESC")
  end
end
