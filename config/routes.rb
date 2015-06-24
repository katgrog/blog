Rails.application.routes.draw do
  root "posts#index"
  resources :posts 
  # This generates the seven RESTful Routes below: 
end
