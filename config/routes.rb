CEAD::Application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  
  root 'home#index'
  get '/neighborhoods', to: 'neighborhoods#index'
  get '/neighborhoods', to: 'neighborhoods#index'
  get '/cooling', to: 'cooling_centers#show', :defaults => { :format => 'json' }

end
