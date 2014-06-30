CEAD::Application.routes.draw do
  devise_for :users
  
  root 'home#index'
  get '/neighborhoods', to: 'neighborhoods#index'

end
