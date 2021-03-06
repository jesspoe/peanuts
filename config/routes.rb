Rails.application.routes.draw do
  root 'statics#home'

  resources :contacts, only: [:new, :create, :destroy]
  resources :admins

  get '/', to: 'statics#home'
  get '/about', to: 'statics#about'
  get '/catering', to: 'statics#catering'
  get '/markets', to: 'statics#markets'
  get '/thanks', to: 'contacts#thank_you'

  get '/messages', to: 'contacts#messages'

  get    '/signup',  to: 'admins#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
