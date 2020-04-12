class MoviesController < ApplicationController

before_action :authenticate_user!

  def index
    @movies =
    if request.fullpath.include?("php")
      Movie.where(genre: "php").page(params[:page]).per(10)
    elsif request.fullpath.include?("talk")
      Movie.where(genre: "talk").page(params[:page]).per(10)
    else
      Movie.where(genre: "movie").page(params[:page]).per(10)
    end
  end
end
