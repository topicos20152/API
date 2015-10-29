Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :users, :only => [:create, :update] do 
    member do
      post :request_access_token
      get :tasks
    end
  end
  resources :tasks, :only => [:index, :show]
end
