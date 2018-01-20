Rails.application.routes.draw do
  resources :samples
  mount Ckeditor::Engine => '/ckeditor'
  post '/auth/:provider/callback' => 'sessions#create'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy', :as => 'logout'
  jinda_methods = ['pending','status','search','doc','logs','ajax_notice']
  jinda_methods += ['init','run','run_do','run_form','end_form']
  jinda_methods.each do |aktion| get "/jinda/#{aktion}" => "jinda##{aktion}" end
  # get jinda method routes
  post '/jinda/pending' => 'jinda#index'
  post '/jinda/end_form' => 'jinda#end_form'
  get '/articles/my' => 'articles/my'
  resources :articles
  resources :identities
  resources :sessions
  resources :password_resets
  resources :jinda, :only => [:index, :new]
  root :to => 'jinda#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
