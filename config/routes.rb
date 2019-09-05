Rails.application.routes.draw do

  devise_for :admins, :controllers => { :registrations => 'admins/registrations'}
  
  # get '/bow_strings/select_color/:id', to: 'bow_strings#select_color'

  resources :bow_strings
  resources :colors
  resources :materials
  resources :bows
  resources :types
  resources :brands

  match "/", to: redirect('/brands'), via: :all, :as => :root

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
