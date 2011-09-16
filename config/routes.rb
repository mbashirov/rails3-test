Rails3Test::Application.routes.draw do
  root :to => 'index#index'
  resource :session, :only => [:create, :destroy, :new]
  namespace :pm do
    match '/' => 'base#index', :as => :root
    resources :projects
  end

end
