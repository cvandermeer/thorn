Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations', travel: '/travel' }
  root to: 'static_pages#home'
  get 'static_pages/town'
  get 'static_pages/map'
  get 'static_pages/castle'
  get 'static_pages/travel'
end
