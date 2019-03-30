Rails.application.routes.draw do
  root "orders#index"
  post "/", to: "orders#create"
  get "/show", to: "orders#show"
end
