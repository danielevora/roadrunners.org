SCRR::Application.routes.draw do
   root 'home#index'

   resources :pages, path: "" do
    collection do
      get :about
      get :history
      get :links
      get :safety
      get :membership
     end
    end
   
   get 'events' => 'events#index'
   get 'newsletters' => 'newsletters#index'
end