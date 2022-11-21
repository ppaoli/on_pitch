Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "pitches", to: "pitches#index"
  get "pitches/:id", to: "pitches#show", as: :pitch
end
