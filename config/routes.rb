Rails.application.routes.draw do

  devise_for :admins
  
  # get '/bow_strings/select_color/:id', to: 'bow_strings#select_color'

  resources :bow_strings
  resources :colors
  resources :materials
  resources :bows
  resources :types
  resources :brands

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
