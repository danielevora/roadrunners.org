SCRR::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'
   
   get 'home/callback' => 'home#callback'
   
   #pages
   get 'about' => 'pages#about'
   get 'history' => 'pages#history'
   get 'links' => 'pages#links'
   get 'safety' => 'pages#safety'
   get 'membership' => 'pages#membership'
   get 'events' => 'events#index'
   
   #301 memberhip/dues.php
   #get 'memberships' => 'memberships#index'
   #get 'memberships/new' => 'memberships#new'
   #get 'memberships/renew' => 'memberships#renew'
   
   #grand prix
   get 'grand_prix' => 'grand_prix#index'
   
   #301 from newsletter to newsletters
   get 'newsletters' => 'newsletters#index'
   
   


   

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
