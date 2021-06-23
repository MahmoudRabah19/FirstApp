Rails.application.routes.draw do
  root :to => "home#index" 
  scope "/:locale" do 
   
  resources :posts
  resources :users
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
