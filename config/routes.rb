Rails.application.routes.draw do
  root to: 'home#index'

  scope '/:locale' do
    root to: 'home#index'

    get 'about', to:'home#about'
    get 'help_and_rules', to:'home#help_and_rules'
    get 'admin_help_and_rules', to:'home#admin_help_and_rules'
    get 'search', to:'home#search'
    get 'add', to:'home#add'
    get 'reports', to:'home#reports'

    resources :sessions, only: [:new, :create, :destroy]
    get 'logout', to: 'sessions#destroy', as: 'logout'
    get 'login', to: 'sessions#new', as: 'login'

    resources :users
    get 'signup', to: 'users#new', as: 'signup'
    get 'edit/:id', to: 'users#edit', as: 'edit'
    post 'block/:id', to: 'users#block', as:'block'

    resources :genres, only: [:new, :create]

    resources :characters, only: [:new, :create, :show, :edit, :update]
    
    resources "contacts", only: [:new, :create]
    get 'contact', to:'contacts#new'
  end
end
