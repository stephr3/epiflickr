Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :images
  end
  root to: "home#index"
  get '/user/my-profile' => "users#profile"
end
