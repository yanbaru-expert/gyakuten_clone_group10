class TextsController < ApplicationController

before_action :authenticate_user!

  def index
    @texts = Text.all
  end

  def show
    @text = Text.find(params[:id])
  end

end
