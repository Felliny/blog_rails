Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  root "posts#index"
end
