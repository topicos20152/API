Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :users, :only => [:create, :update]
  resources :tasks, :only => [:index, :show]
end
