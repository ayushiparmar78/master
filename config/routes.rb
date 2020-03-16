Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home, only: :index
  resources :contact_us
  root 'home#index'
end
