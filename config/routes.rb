Rails.application.routes.draw do
  root 'static#home'
  devise_for :users
  resources :jobs
end
