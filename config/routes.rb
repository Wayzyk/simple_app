Rails.application.routes.draw do
  #root 'users#show_form'

  resources :users

  get 'favicon', to: "welcome#favicon"
end
