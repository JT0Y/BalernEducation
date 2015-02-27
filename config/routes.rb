Rails.application.routes.draw do
  resources :appointments

  resources :inqueries

  resources :students

  resources :teachers

  resources :groups

  resources :photos

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]

  devise_for :users
  root "pages#home"
  get  "about" => "pages#about"
end
