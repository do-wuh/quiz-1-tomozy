Rails.application.routes.draw do
  root 'grids#index'
  resources :grids
end
