CEAD::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', sessions: 'sessions' }

  # resources :zipcodes
  get '/resources', to: 'users#resources'

  post '/incoming_mails' => 'incoming_mails#create'

  root 'home#index'
  get '/neighborhoods', to: 'neighborhoods#index'
  get '/print/:zip', to: 'users#print', :as => :user_print
  # get '/neighborhoods', to: 'neighborhoods#index'
  get '/cooling', to: 'cooling_centers#show', :defaults => { :format => 'json' }
  get '/publish', to: 'emails#published_images', :defaults => { :format => 'json' }
  get '/users', to: 'users#show', :defaults => { :format => 'json' }
  get '/retro', to: 'buildings#index', :defaults => { :format => 'json' }
  get '/resource', to: 'resources#show', :defaults => { :format => 'json' }
  get '/zipcode_results', to: 'zipcodes#search', :defaults => { :format => 'json' }
  get '/cooling_search', to: 'cooling_centers#index', :defaults => { :format => 'json' }
  get '/neighbors', to: 'neighborhoods#index', :defaults => { :format => 'json' }
  get '/tweets', to: 'tweets#index', :defaults => { :format => 'json' }
  get '/search', to: 'search#search' #, :defaults => { :format => 'json' }

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
