Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "my_profile", to: "users#my_profile"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "pages#home"

  resources :users, only: %i[show new create update] do
    resources :dolls, only: %i[index show]
  end

  resources :dolls, only: %i[index show new create update] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[index destroy edit update]



  resources :dolls, only: %i[index show new create update destroy]
end
