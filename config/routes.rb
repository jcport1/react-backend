Rails.application.routes.draw do
  get "/painting/:id", to: "paintings#painting_details"
  resources :paintings
  post "/search", to: "paintings#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
