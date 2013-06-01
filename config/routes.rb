MuniNotifier::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "/signout" => "sessions#destroy", :as => :signout  

  root 'main#index'

  scope :walkthrough do
    get 'step2' => 'walkthrough#step2'
  end

  scope :api do
    resources :muni_routes
  end
end
