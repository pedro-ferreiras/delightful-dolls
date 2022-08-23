Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "pages#home"
  resources :dolls, only: %i[index show new create update]
end
