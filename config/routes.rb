Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/azure/show', to: 'azure_storage_management#show'
 get '/azure/create', to: 'azure_storage_management#create'
end

