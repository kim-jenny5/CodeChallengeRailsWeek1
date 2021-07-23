Rails.application.routes.draw do
  resources :supplies

  resources :parties

  resources :categories do
    resources :parties, shallow: true
  end
  #get '/parties', to: 'parties#index'
  # For details on the DSL available within this file, see https://guides.rubyonrg/routing.rails.ohtml
end
