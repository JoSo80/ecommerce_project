Rails.application.routes.draw do
  devise_for :users
  resources :pages, except: [:show]
  resources :searches

  get "pages/:permalink" => "pages#permalink", as: :permalink

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: %i[index show]
  resources :cart, only: %i[create destroy]
  resources :products, only: :show do
    collection do
      get :search
    end
  end

  root to: "categories#index"

  scope "/checkout" do
    post "create", to: "checkout#create",  as: "checkout_create"
    get "success", to: "checkout#success", as: "checkout_success"
    get "cancel",  to: "checkout#cancel",  as: "checkout_cancel"
  end
end
