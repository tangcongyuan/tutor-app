Rails.application.routes.draw do
  
  resources :users do
    member do
      get :received_reviews, :posted_reviews
    end
  end
  
  resources :reviews do
    member do
      get :reviewer, :reviewee
    end
  end
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'reviews#index'
end
