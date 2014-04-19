Rails.application.routes.draw do
  resources :colors

  root :controller => :embers, :action => :index
end
