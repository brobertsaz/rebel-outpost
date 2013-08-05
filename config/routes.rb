RebelOutpost::Application.routes.draw do

  get "pages/index", as: :home
  get "pages/process", as: :process
  get "pages/services", as: :services
  root to: 'pages#index'
end
