Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create] do
        resources :visits
      end

      resources :merchants, only: [:index, :show, :create]
      resources :visits, only: [:index, :show, :create] do
        collection do
          get 'search',  action: :search
        end
      end
    end
  end
end
