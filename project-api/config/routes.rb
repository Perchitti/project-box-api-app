Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do
  namespace :v1 do
resources :projects
 #put '/api/v1/projects/:id' to: 'projects#update'
  end
  end
end
