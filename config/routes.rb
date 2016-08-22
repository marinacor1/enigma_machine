Rails.application.routes.draw do
  root 'welcome#index'

  get '/encrypt', 'enigma#encrypt'
  get '/decrypt', 'enigma#decrypt'

end
