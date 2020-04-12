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
end
