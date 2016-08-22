Rails.application.routes.draw do
  root 'welcome#index'

  post '/encrypt', to: 'enigma#encrypt'
  post '/decrypt', to: 'enigma#decrypt'

end
