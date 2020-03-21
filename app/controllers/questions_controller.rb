class QuestionsController < ApplicationController

before_action :authenticate_user!

  def index
    @questions = Question.all.order(id: "DESC")
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    # インスタンスの保存に成功した場合
    if @question.save
      flash[:success] = "質問を登録しました。"
      redirect_to @question

    # インスタンスの保存に失敗した場合
    else
      flash[:danger] = "質問の登録に失敗しました。"
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end

end
