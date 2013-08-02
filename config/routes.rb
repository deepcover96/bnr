Manager::Application.routes.draw do
  resources :orders do
    post :add_box, :on => :member
    delete :remove_box, :on => :member
  end


  resources :boxes 

  resources :widgets do
    # Added route I defined as "filter' that handles a collection /widgets/filter
    get :filter, :on => :collection
  end

  root :to => "widgets#index"
  match "/products/:name" => "widgets#show", :as => :products


  get "inventory/new"
  post "inventory/create"

  get "inventory/edit/:id" => "inventory#edit", as: 'edit_inventory'
  put "inventory/update/:id" => "inventory#update", as: 'update_inventory'
  delete "inventory/delete/:id" => "inventory#delete", as: 'delete_inventory'

  get "inventory/show"
  get "inventory/index"

  get "monthly_special/featured"

  get "about/contact"

  get "about/company"
  get "about/companie"

  get "about/future"

  get "about/supervisors"

  get "about/managers"

  get "about/more_info"
  get "about/thank_you"

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
