Rails.application.routes.draw do
  root 'welcome#index'

  get '/encrypt/new', to: 'encryption#new'
  post '/encrypt/', to: 'encryption#create'
  get '/encrypt/:id', to: 'encryption#show', as: "encryption"

  get '/decrypt/new', to: 'decryption#new'
  post '/decrypt/', to: 'decryption#create'
  get '/decrypt/:id', to: 'decrypton#show', as: 'decryption'

end
