Rails.application.routes.draw do
  resources :quizzes
  # , except: [:new, :edit, :index]
  # get '/new/quiz', to: 'quizzes#new', as: 'new_quiz'
  # get '/edit/quiz/:id', to: 'quizzes#edit', as: 'edit_quiz'
  root 'quizzes#index'
end