Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  namespace :api do
    namespace :v1 do
      resources :users, :only => [] do 
        member do
          post :request_access_token
          get :tasks
          get :courses
        end
      end
      resources :tasks, :only => [:show]
    end
  end

end
