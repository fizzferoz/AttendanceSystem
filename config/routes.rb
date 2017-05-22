Rails.application.routes.draw do
  resources :statuskehadiranpengunamakmals
  resources :pengunamakmals
  resources :penyata_kehadirans
  resources :pendaftaran_kelas
  resources :dashboard, only: :index
  devise_for :users

  root 'dashboard#index'
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

