Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  get '/portfolios/:id', to: 'portfolios#show'
  get 'about', to: 'pages#about', as: 'about_page'
  get 'contact', to: 'pages#contact', as: 'contact_page'

  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
