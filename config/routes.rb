Rails.application.routes.draw do
  resources :homeworks

  resources :resources

  resources  :events
  resources  :inqueries
  resources  :students
  resources  :teachers
  resources  :groups
  resources  :photos
  devise_for :users

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

  authenticated :user do
    root 'pages#home', as: "authenticated_root"
  end
  root 'welcome#index'

  get  "about" => "pages#about"
  get  "calendar" => "pages#calendar"
  get  "book" => "pages#book"


scope '(:locale)' do resources :orders
  resources :book
  resources :events
  root 'pages#home', as: 'home', via: :all
  end
end
