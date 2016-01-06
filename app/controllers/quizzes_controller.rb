class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.order(:name)
  end
end
