Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # namespeceでパスを指定
  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :employees, only: [:index, :show, :create, :update]
    end
  end
  resources :homes, only: [:index]
  root to: 'homes#index'
end
