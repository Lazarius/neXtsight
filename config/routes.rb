NeXtSight::Application.routes.draw do

  devise_for :users

  resources :users, :only => [ :show ]

  resources :albums do
    resources :pictures
    #resources :movies,   :controller => :documents
  end

  root :to => 'home#index'
end
