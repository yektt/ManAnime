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

    get 'login', to:'session#new'  
    post 'login', to:'session#create'
    delete 'logout', to: 'session#destroy'

    get 'signup', to: 'users#new' 
    post 'signup', to: 'users#create'

    get 'users/show'

    get 'users/edit'
  end
end
