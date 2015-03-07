Efgame::Application.routes.draw do

<<<<<<< HEAD
  resources :game_rosters
=======
  resources :profiles
>>>>>>> cd8d3c3eb3c098d019df9aebbdd8095ad856a5b7

  resources :games

  captcha_route
  get "users/index"
  get "users/show"
  get "users/edit"
  get "users/destroy"
<<<<<<< HEAD

=======
  get "users/simple_form"
>>>>>>> cd8d3c3eb3c098d019df9aebbdd8095ad856a5b7

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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


<<<<<<< HEAD
  devise_for :users, :controllers => { registrations: 'registrations' }
end
=======
  # devise_for :users, :controllers => { registrations: 'registrations' }

  devise_for :users, :controllers => { :registrations => "users/registrations" } do
#get '/author/sign_up', :to => 'devise/registrations#new'
#get '/client/sign_up', :to => 'devise/registrations#new'
    get '/user/sign_up', :to => 'users/registrations#new'
  end

end
>>>>>>> cd8d3c3eb3c098d019df9aebbdd8095ad856a5b7
