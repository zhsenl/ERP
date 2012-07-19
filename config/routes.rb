# -*- encoding : utf-8 -*-
ERP::Application.routes.draw do

  namespace :dict do resources :transit_types end

  resources :declaration_packings
  resources :declaration_containers

  resources :messages do 
    get 'unread', :on => :collection
    post 'read', :on => :member
    get 'search', :on => :collection
  end

  resources :declaration_cargos

  resources :declarations do 
    get 'search', :on => :collection
    get 'declare', :on => :member
    get 'print_declaration', :on => :member
    get 'print_contract', :on => :member
    get 'print_tax_invoice', :on => :member
    get 'print_invoice', :on => :member
    get 'print_packing1', :on => :member
    get 'print_packing2', :on => :member
    get 'print_packing3', :on => :member
  end

  resources :cargos do
    get 'search', :on => :collection
  end

  resources :contract_consumptions

  resources :contract_materials do
    get 'search', :on => :collection
  end

  resources :contract_products do
    get 'search', :on => :collection
  end

  resources :contracts do
    get 'import', :on => :collection
    post 'upload', :on => :collection
  end

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
  

  resources :users do
    get 'search', :on => :collection
    get 'enterprises', :on => :member
  end
  
  resources :enterprises, :foreign_enterprises do
    get 'search', :on => :collection
    get 'show_by_code', :on => :member
  end
  
  match '/dict', :to => 'pages#dict'  
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
              :transit_types,
              :wrap_types do
      get 'search', :on => :collection
      get 'show_by_code', :on => :member
    end
  end
  
  root :to => 'pages#home'
end
