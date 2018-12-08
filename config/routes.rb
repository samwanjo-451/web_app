Rails.application.routes.draw do
   
  root 'welcome#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users do
    resource :profile
  end
  
  get 'about', to: 'welcome#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  
end
