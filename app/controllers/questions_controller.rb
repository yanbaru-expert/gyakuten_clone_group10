class QuestionsController < ApplicationController

before_action :authenticate_user!

  def index
    @questions = Question.all.order(id: "DESC")
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    # インスタンスの保存に成功した場合
    if @question.save
      flash[:notice] = "質問を投稿しました。"
      redirect_to questions_path

    # インスタンスの保存に失敗した場合
    else
      flash.now[:dangar] = "質問の登録に失敗しました。"
      render :index
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end

end
