Rails.application.routes.draw do
  root 'welcome#index'

  get '/encrypt/new', to: 'encryption#new'
  post '/encrypt/', to: 'encryption#create'
  get '/encrypt/:id', to: 'encryption#show', as: "encryption"
  post '/decrypt', to: 'encryption#decrypt'

end
