Rails.application.routes.draw do

  root to: 'home#index'

  get 'about', to:'home#about'
  get 'help_and_rules', to:'home#help_n_rules'
  get 'contact', to:'home#contact'

  get 'login', to:'session#new'  

  get 'signup', to: 'users#new' 

  get 'users/show'

  get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
