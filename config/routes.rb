Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hotels#index'
  resources :contacts
  resources :hotels, :only => [:index, :show] do
  resources :reviews, :only => [:index, :show, :new, :create]
  resources :reservations, :only=> [:new, :create, :show]

  end
  resources :prefectures, :only => [:index, :show]
end
  