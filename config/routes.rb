Rails.application.routes.draw do
  resources :bow_strings
  resources :colors
  resources :materials
  resources :bows
  resources :types
  resources :brands

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
