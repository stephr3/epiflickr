Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/user/my-profile' => "users#profile"
end
