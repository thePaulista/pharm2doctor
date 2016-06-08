Rails.application.routes.draw do
  root "welcome#index"
  get "/auth/twitter", as: :twitter_login
  get "/auth/twitter/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
