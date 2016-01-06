class QuestionsController < ApplicationController
  def new
    @question = Question.new
    @quiz = Quiz.find(params[:quiz_id])
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.create(question_params)

    if @question.persisted?
      redirect_to @quiz
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:name, :description)
  end
end
