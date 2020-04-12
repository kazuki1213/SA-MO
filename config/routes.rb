Rails.application.routes.draw do
  root to: 'home#index'
  resources :users do
    resources :body_temperatures do
    end
  end
end
