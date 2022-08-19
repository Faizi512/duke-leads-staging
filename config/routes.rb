Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  post '/success' => 'pages#success'
  get '/terms' => 'pages#terms'
  get '/privacy-policy' => 'pages#privacy'
  get '/cookie-policy' => 'pages#cookie'
end
