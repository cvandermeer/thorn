Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: 'static_pages#home'
  get 'static_pages/map'
end
