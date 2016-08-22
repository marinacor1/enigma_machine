Rails.application.routes.draw do
  root 'welcome#index'

  post '/encrypt', to: 'enigma#new'
  post '/decrypt', to: 'enigma#decrypt'

end
