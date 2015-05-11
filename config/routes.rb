Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  get 'static_pages/map'
end
