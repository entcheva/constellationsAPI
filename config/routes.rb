Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      post 'signup', to: 'users#create'
      post 'login', to: 'users#login'
      get 'active', to: 'users#active'
      get 'active_id', to: 'users#active_id'
      get 'clear_guest', to: 'users#clear_guest'
      get 'my_constellations', to: 'constellations#my_constellations'
      resources :stars
      resources :constellations
    end
  end
end
