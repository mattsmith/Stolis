Stolis::Application.routes.draw do
  resources :quiz
  root :to => 'quiz#index'
end
