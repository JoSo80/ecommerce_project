Rails.application.routes.draw do
  devise_for :users
  resources :pages, except: [:show]

  get "pages/:permalink" => "pages#permalink", as: :permalink

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: %i[index show]
  resources :cart, only: [:create, :destroy]
  resources :products, only: :show do
    collection do
      get :search
    end
  end

  root to: "categories#index"
end
