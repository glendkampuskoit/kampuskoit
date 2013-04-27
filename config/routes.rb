Campus::Application.routes.draw do

  get "search/result"

  #root to: 'visitors#new'
  root to: 'home#index'

  resources :prodis
  resources :univs
  resources :subscribers
  resources :sessions, only: [:new, :create, :destroy]
  resources :visitors, only: [:new, :create]
  resources :kotas
  resources :provinsis

  get "/kontak", to: 'static_pages#contact'
  get "/term", to: 'static_pages#term'
  get "/faq", to: 'static_pages#faq'
  #root to: 'static_pages#welcome'
  
  match '/visit', to: 'visitors#new'

  #get "home/index"
  match '/home', to: 'home#index'
  match '/signup', to: 'subscribers#new'
  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'

  match 'auth/:provider/callback', to: 'sessions#login_facebook'
  match 'auth/failure', to: redirect('/')

  match '/confirm', controller: 'subscribers', action: 'confirm'
  match '/search', to: 'search#result'
  match '/rating', to: 'rating#index'
  
  #match '*path', :controller => "visitors", :action => "new"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
