Rails.application.routes.draw do
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  # get "welcome/index"

  resources :students
  resources :courses
  resources :blogs

  namespace :admin do 
    resources :students

  end




end
