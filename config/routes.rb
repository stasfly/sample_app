Rails.application.routes.draw do
  #get 'sessions/new'
  get 'users/new'
  #get 'users/show'
  root 'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
  get  'static_pages/contact'

#reke test goes only wit upper set of get.
#rake test:integration goes only with bottom set of get.

# link_to seems doesn't respond to a name_path pettern. 
  #get 'home'  => 'static_pages#home'
  
<<<<<<< HEAD
  get    'help'     =>  'static_pages#help'
  get    'about',   to: 'static_pages#about'
  get    'contact', to: 'static_pages#contact'
  get    'signup',  to: 'users#new' #link_to works only wit 'signup' or '/signup'
  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
=======
  get 'help'     =>  'static_pages#help'
  get 'about',   to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'signup',  to: 'users#new' #link_to works only wit 'signup' or '/signup'

>>>>>>> modeling-users
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #resources :static_pages
  # Defines the root path route ("/")
  
end
