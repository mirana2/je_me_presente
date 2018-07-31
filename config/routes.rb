Rails.application.routes.draw do

  get 'user/new'
  root 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'contact', to: 'static_pages#contact'
  get 'about', to: 'static_pages#about'
  get 'toi', to: 'static_pages#toi', as: 'about_toi'
  get 'groupe', to: 'static_pages#groupe', as: 'about_groupe'
  get 'new', to: 'user#new'
  get 'show', to: 'user#show'


  post 'new', to: 'user#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
