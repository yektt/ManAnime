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
    get 'anime_list', to:'home#anime_list'
    get 'manga_list', to:'home#manga_list'

    resources :sessions, only: [:new, :create, :destroy]
    get 'login', to: 'sessions#new', as: 'login'

    resources :users do
      resources :favorites
    end
    resources :users do 
      resources :reports, only: [:create, :destroy]
    end 

    resources :account, only: [:edit, :update]

    get 'signup', to: 'users#new', as: 'signup'
    post 'block/:id', to: 'users#block', as:'block'
    post 'admin/:id', to: 'users#admin', as:'admin'

    resources :genres, only: [:new, :create]
    resources :characters, only: [:new, :create, :show, :edit, :update]
    resources :contents do
      resources :comments, only: [:create, :update, :destroy] do
        resources :replies, only: [:create, :destroy]
        resources :votes, only: [:create, :update]
      end
      resources :reviews, only: [:create, :destroy]
    end
    get 'delete_reply/:id', to: 'replies#destroy', as:'delete_reply'
    get 'delete_comment/:id', to: 'comments#destroy', as:'delete_comment'
    get 'contents/:content_id/comments/:id', to: 'comments#update'
    
    resources "contacts", only: [:new, :create]
    get 'contact', to:'contacts#new'
  end
end
