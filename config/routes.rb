Rails.application.routes.draw do
  resources :categories, only: %i[index show]
  resources :products, only: :show do
    collection do
      get :search
    end
  end

  root to: "categories#index"
end
