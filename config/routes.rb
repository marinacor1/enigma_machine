Rails.application.routes.draw do
  root 'welcome#index'

  get '/encrypt', to: 'enigma#new'
  post '/encrypt', to: 'enigma#new'
  post '/decrypt', to: 'enigma#decrypt'

end
