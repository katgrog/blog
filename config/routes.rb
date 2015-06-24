Rails.application.routes.draw do
  root "posts#index"
  # This generates the seven RESTful Routes below: 
  resources :posts do
  	resources :comments, only: [:new, :create, :destroy] 
  end
end
