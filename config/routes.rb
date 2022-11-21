Rails.application.routes.draw do
  root to: "pitches#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get "pitches", to: "pitches#index"
get "pitches/:id", to: "pitches#show", as: :pitch
end
