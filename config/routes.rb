Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"

   get "users/index"
   resources :users
   root :to => "users#index"

   get '/products'  => 'products#index' 
   resources :products
   
   get '/admin/categories'  => 'admin/categories#index' 
   resources :categories


   get '/signup'  => 'users#new' 
   resources :users
  
   get 'login'  => 'sessions#new' 
   resources :sessions

  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

   get '/admin' => 'admin/products#index'
   get '/admin/products' => 'admin/products#index'
   get '/admin/products/new' => 'admin/products#new'
   get 'admin/products/show/:id' => 'admin/products#show'
   get 'admin/products/edit/:id' => 'admin/products#edit'
   delete 'admin/products/destroy/:id' => 'admin/products#destroy'

   get '/admin/categories' => 'admin/categories#index'
   resources :categories
   get '/admin/categories/new' => 'admin/categories#new'
   get 'admin/categories/edit/:id' => 'admin/categories#edit'
   delete 'admin/categories/destroy/:id' => 'admin/categories#destroy'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
