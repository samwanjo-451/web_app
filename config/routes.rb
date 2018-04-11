Rails.application.routes.draw do
   
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  resources :contacts
  get 'contact-us', to: 'contacts#new'
end
