Refinery::Core::Engine.routes.draw do
  get '/system/resources/*dragonfly', :to => Dragonfly[:refinery_resources]

  namespace :admin, :path => Refinery::Core.backend_route do
    resources :resources, :except => :show do
      get :insert, :on => :collection
    end
    resources :manuals do
        post 'show', :on => :member, :action => :show, as: 'show'
    end
  end
end
