class QuestionsController < ApplicationController

before_action :authenticate_user!

  def index
    @questions = Question.all.order(id: "DESC")
  end

  def show
    @question = Question.find(params[:id])
  end




end
