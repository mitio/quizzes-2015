Rails.application.routes.draw do
  resources :quizzes do
    resources :questions
  end
end
