Stolis::Application.routes.draw do
  resources :quizzes
  root :to => 'quizzes#new'
end
