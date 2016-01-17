Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    collection do
      resources :newest, only: :index
    end
  end
  resources :users

  resources :tags, param: :tag_name, only: [:index, :show]
end
