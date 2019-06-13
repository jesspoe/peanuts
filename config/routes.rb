Rails.application.routes.draw do
  resources :contacts, only: [:index, :new, :create]
  resources :admins
  get '/', to: 'statics#home'
  get '/about', to: 'statics#about'
  get '/catering', to: 'statics#catering'
  get '/markets', to: 'statics#markets'

  get '/thanks', to: 'contacts#thank_you'

end
