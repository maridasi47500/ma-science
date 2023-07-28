Rails.application.routes.draw do
  resources :momentdays
  resources :batteries
  resources :materials 
  
  resources :games do
    
    member do
      get "battery"
      get "circleobjects"
      get "word"
      get "materials"
      get "moment"
    end
  end
  resources :images
  resources :mysciences
  root "mysciences#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
