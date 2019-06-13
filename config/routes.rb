Rails.application.routes.draw do
  resources :contacts, :path => "contact"
  resources :admins
  get '/', to: 'statics#home'
  get '/about', to: 'statics#about'
  get '/catering', to: 'statics#catering'
  get '/markets', to: 'statics#markets'

end
