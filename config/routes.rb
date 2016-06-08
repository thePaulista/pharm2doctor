Rails.application.routes.draw do
  root "welcome#index"
  get "/auth/twitter", as: :twitter_login
end
