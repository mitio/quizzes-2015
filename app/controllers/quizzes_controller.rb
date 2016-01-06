class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.order(:name)
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)

    if @quiz.persisted?
      redirect_to quizzes_path
    else
      render :new
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name)
  end
end
