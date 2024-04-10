Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Define root route to articles#index
  root "articles#index"

  # Define routes for articles resource
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  # Define health check route
  get "/up", to: "rails/health#show", as: :rails_health_check
end
