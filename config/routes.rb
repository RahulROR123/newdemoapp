Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org
  root 'users#index' 
    get 'users/store_api_data'
    get 'users/show_store_data'
      post 'users/update_store_data'

     resources :users
end
