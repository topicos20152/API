Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :users, :only => [:create, :update] do 
    member do
      get :request_access_token
    end
  end
  resources :tasks, :only => [:index, :show]
end
