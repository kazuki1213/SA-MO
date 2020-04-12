Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
    sessions: "users/sessions"
  }
  root to: 'home#index'
  resources :users do
    resources :body_temperatures do
    end
  end
  resources :groups do
    collection do
      get :add_member_new
      post :add_member_create
      get :send_mail
    end
    resources :users do
    end
  end
end
