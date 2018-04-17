Rails.application.routes.draw do
   
  devise_for :users
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
