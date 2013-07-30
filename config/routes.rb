Campus::Application.routes.draw do

  root to: 'home#index'

  resources :prodis, only: [:index]
  resources :univs, only: [:index, :show] do
    resources :prodis, only: [:show]
  end
  resources :subscribers, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :visitors, only: [:create]
  resources :feedbacks, only: [:create]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :update_subscriber_profiles, only: [:edit, :update]
  resources :survey_alumnis, only: [:index, :new, :create, :destroy]
  
  match '/visit', to: 'visitors#new'

  match '/home', to: 'home#index'
  match '/signup', to: 'subscribers#new'
  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'

  match 'auth/:provider/callback', to: 'sessions#login_facebook'
  match 'auth/failure', to: redirect('/')

  match '/confirm', controller: 'subscribers', action: 'confirm'
  match '/search', to: 'search#result'
  match '/ranking', to: 'ranking#index'

  # for admin panel pages
  #namespace :admin do
  scope '/admin' do
    #admin login & logout
    resources :admin_sessions, only: [:new, :create, :destroy]
    resources :admins

    # dashboard
    match '/dashboard', to: 'dashboard#index'
    match '/admin_login', to: 'admin_sessions#new'
    match '/admin_logout', to: 'admin_sessions#destroy'

    #data
    resources :kotas
    resources :provinsis
    resources :jenjang_prodis
    resources :jenis_pts
    resources :univs, only: [:new, :create, :edit, :update, :destroy] do
      resources :prodis, only: [:new, :create, :edit, :update, :destroy]
    end
    resources :feedbacks, only: [:index, :show, :destroy]
    resources :visitors, only: [:destroy]
    resources :subscribers, only: [:edit, :update, :show, :destroy]
    resources :admin_profiles, only: [:edit, :update]
    resources :univgalleries, only: [:create, :destroy]
    resources :prodi_galleries, only: [:create, :destroy]

    # special for univ & prodi list
    match '/univs_list', to: 'univs#list'
    match '/prodis_list', to: 'prodis#list'
    match '/visitors_list', to: 'visitors#index'
    match '/subscribers_list', to: 'subscribers#index'
    match '/ranking_list', to: 'ranking#list'
  end
  
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
