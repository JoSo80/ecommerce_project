Rails.application.routes.draw do
  resources :pages, except: [:show]

  get "pages/:permalink" => "pages#permalink", as: :permalink

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: %i[index show]
  resources :products, only: :show do
    collection do
      get :search
    end
  end

  root to: "categories#index"
end
