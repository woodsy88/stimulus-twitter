Rails.application.routes.draw do

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :events
  
  resources :tweets
  root to: "tweets#index"
end
