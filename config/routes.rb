Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout' }
  resources :portfolios, except: [:show]

  get '/portfolios/:id', to: 'portfolios#show'
  get 'about', to: 'pages#about', as: 'about_page'
  get 'contact', to: 'pages#contact', as: 'contact_page'

  resources :blogs do
    member do
      get :toggle_status
    end
  end


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
