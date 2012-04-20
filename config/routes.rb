# -*- encoding : utf-8 -*-
ERP::Application.routes.draw do
  
  resources :contract_productions

  resources :contracts

  resources :manage_relationships

  match '/options', :to => 'options#index'
  match '/options/update', :to => 'options#update'

  resources :sessions, :only => [:new, :create, :destroy]
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  match '/me', :to => 'users#me'
  match '/me/modify', :to => 'users#modify'
  match '/me/change', :to => 'users#change'
  match '/me/enterprises', :to => 'users#my_enterprises'
  
  match '/select_enterprise', :to => 'pages#select_enterprise'  
  match '/dict', :to => 'pages#dict'

  resources :users do
    get 'enterprises', :on => :member
  end
  
  resources :enterprises, :foreign_enterprises do
    get 'search', :on => :collection
    get 'show_by_code', :on => :member
  end
  
  namespace :dict do
    resources :attachments,
              :brackets,
              :bring_in_modes,
              :containers,
              :countries,
              :currencies,
              :customs,
              :deal_modes,
              :declare_modes,
              :districts,
              :goods,
              :investment_modes,
              :load_ports,
              :metal_cabinets,
              :pay_ways,
              :ports,
              :process_types,
              :receipt_statuses,
              :tax_kinds,
              :tax_modes,
              :trade_modes,
              :transport_modes,
              :trucks,
              :units,
              :usages,
              :wrap_types do
      get 'search', :on => :collection
      get 'show_by_code', :on => :member
    end
  end

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
  # namespace :admin do
    # Directs /admin/products/* to Admin::ProductsController
    # (app/controllers/admin/products_controller.rb)
    #resources :products
  # end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
