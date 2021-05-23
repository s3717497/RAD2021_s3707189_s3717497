Rails.application.routes.draw do

  resources :collections, only: [:show, :index]
  
  resources :saved, only: [:index, :update] do
    get :db, on: :collection
  end
    
  resources :items do
    get :filter, on: :member
  end
  
  resources :bag_items do
    delete :destroy_all, on: :collection
    get :rating, on: :collection
  end
  resources :collections, only: [:show, :index] do 
    get :filter, on: :member
  end
  
  get '/auth/:provider/callback'  => 'users#create'
  get '/prompt'                   => 'users#prompt'
  get  '/signup'                  => 'users#signup'
  post '/signup'                  => 'users#signed'
  get '/login'                    => 'users#login'
  post '/login'                   => 'users#logged'
  delete '/logout'                => 'users#logout'
  get '/forgot_password'          => 'users#forgot_password'
  post '/forgot_password'         => 'users#forgot_password_create'
  get '/reset_password'           => 'users#reset_password'
  patch '/reset_password'         => 'users#reset_password_create'
  resources :users, only: [:show, :edit, :update] do
    post :subscription, on: :member
  end
  
  get 'search'      => 'home#search'
  post 'newsletter' => 'home#newsletter'
  get 'popular'     => 'home#popular'
  get 'help'        => 'home#help'
  root 'home#index'
end
