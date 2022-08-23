Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "pages#home"

  resources :dolls, only: %i[index show new create update]
  resources :users, only: :show

end
