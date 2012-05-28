Cvtheque12::Application.routes.draw do
  resources :candidates
  resources :offers

  devise_for :users
  resources :users, :only => [:update]

  root :to => "offers#index"
end
