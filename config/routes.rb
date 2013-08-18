RebelOutpost::Application.routes.draw do

  get 'index', to: "pages#index", as: :home
  get 'process', to: "pages#process", as: :process
  get 'services', to: "pages#services", as: :services
  get 'contact_us', to: "contacts#new", as: :contact_us
  resources :contacts
  root to: 'pages#index'
end
