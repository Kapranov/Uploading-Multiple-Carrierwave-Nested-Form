Rails.application.routes.draw do

  resources :frauds
  root to: "frauds#index"
end
