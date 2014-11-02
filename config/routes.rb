MyTest::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "/admin", :to => "devise/sessions#new"
    match 'auth/:provider/callback', to: 'devise/omniauth_callbacks#create'
  end

  resources :admins do
  	get :add_product, :on => :collection
    get :add_category, :on => :collection
  end
  post 'save_product' => "admins#save_product"
  post 'send_mail' => "welcome#send_mail"  
  post 'posts' => "admins#save_category"  
  get "home" => "welcome#index"
  root :to => 'welcome#index'
  get "/cart" => "welcome#cart"
  get "/checkout" => "welcome#checkout"
  get "/detail" => "welcome#detail"
end
