Rails.application.routes.draw do

  scope '/:locale' do
    root to: 'home#index'

    get 'about', to:'home#about'
    get 'help_and_rules', to:'home#help_and_rules'
    get 'admin_help_and_rules', to:'home#admin_help_and_rules'
    get 'contact', to:'home#contact'
    get 'search', to:'home#search'
    get 'add', to:'home#add'
    get 'reports', to:'home#reports'

    resources :sessions, only: [:new, :create, :destroy]
    get 'login', to:'session#new'  
    post 'login', to:'session#create'
    delete 'logout', to: 'session#destroy'

    resources :users
    get 'signup', to: 'users#new' 
    post 'signup', to: 'users#create'
    get 'profile', to: 'users#show'
  end
end
