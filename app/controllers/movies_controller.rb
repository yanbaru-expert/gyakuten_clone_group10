class MoviesController < ApplicationController

before_action :authenticate_user!

def index
  @movies = Movie.page(params[:page]).per(10)
end


end
