Rails.application.routes.draw do
  root             'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

# reke test and rake test:integration go only with both sets of get.
# link_to seems doesn't respond to a name_path pettern. 
  #get 'home'  => 'static_pages#home'
  
  get 'help'  => 'static_pages#help'
  get 'about',  to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #resources :static_pages
  # Defines the root path route ("/")
  
end
