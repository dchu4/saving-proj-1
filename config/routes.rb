Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/pages/contact' => 'pages#contact'
  get '/pages/circle_of_care' => 'pages#circle_of_care'
  get '/pages/wound_care' => 'pages#wound_care'
  get '/pages/dementia_care' => 'pages#dementia_care'
  get '/pages/therapy' => 'pages#therapy'
  get '/pages/about' => 'pages#about'

  get '/pages/careers' => 'careers#new'
  get '/careers/thank_you' => 'careers#thank_you'
  resources :careers, only: [:index, :new, :create, :show, :destroy]

  get '/tours/thank_you' => 'tours#thank_you'
  resources :tours

  resources :images

  resources :videos

  resources :contacts

  resources :components
end
