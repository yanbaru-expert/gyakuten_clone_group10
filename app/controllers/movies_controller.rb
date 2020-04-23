class MoviesController < ApplicationController

before_action :authenticate_user!

  def index
    @movies = Movie.where(genre: (params[:genre] || "movie")).order(id: "ASC").page(params[:page]).per(10)
  end
end
