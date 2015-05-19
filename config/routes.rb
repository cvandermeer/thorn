Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations', travel: '/travel' }
  root to: 'static_pages#home'
  get 'static_pages/map'
  resources :locations, only: [:show]
  get 'locations/:id/travel' => 'locations#travel', as: 'travel'
end
