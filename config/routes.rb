CEAD::Application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  # resources :zipcodes
  
  root 'home#index'
  get '/neighborhoods', to: 'neighborhoods#index'
  # get '/neighborhoods', to: 'neighborhoods#index'
  get '/cooling', to: 'cooling_centers#show', :defaults => { :format => 'json' }
  get '/users', to: 'users#show', :defaults => { :format => 'json' }
  get '/zipcode_results', to: 'zipcodes#search', :defaults => { :format => 'json' }
  get '/cooling_search', to: 'cooling_centers#index', :defaults => { :format => 'json' }
  get '/search', to: 'search#search' #, :defaults => { :format => 'json' }

end
