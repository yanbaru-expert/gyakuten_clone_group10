class MoviesController < ApplicationController

before_action :authenticate_user!

  def index
    genre = params[:genre] != nil ? params[:genre] : "movie"
    @movies = Movie.where(genre: genre).page(params[:page]).per(10)
  end
end
