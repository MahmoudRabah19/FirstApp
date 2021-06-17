Rails.application.routes.draw do
  scope "/:locale" do 
  root :to => "home#index"  
  resources :posts
  resources :users
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
