Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sample', to: 'samples#index'
  get '/gnavi', to: 'gnavis#index'
end
