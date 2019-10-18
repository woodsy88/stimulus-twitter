Rails.application.routes.draw do

  resources :projects
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  resources :users, only: [:index, :show] do
    member do
      post :follow
    end
  end

  resources :events
  
  resources :tweets do
    member do
      post :retweet
    end
  end
  root to: "tweets#index"
end
