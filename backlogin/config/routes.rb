Rails.application.routes.draw do
  resources :metadata
  root "welcome#index"
  get "welcome/index"
end
