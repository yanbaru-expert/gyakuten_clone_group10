class LinesController < ApplicationController

before_action :authenticate_user!

def index
  @lines = Line.all.order(id: "ASC")
end

def show
  @line = Line.find(params[:id])
end

end
