Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :update]
      resources :events, only: [:index, :create, :show, :update, :destroy]
      resources :favorites, only: [:create, :show, :destroy]
    end
  end

end
