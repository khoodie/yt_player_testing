Rails.application.routes.draw do
  root 'home#index'
  get '/search' => 'home#search'
  # get '/main/index/:searchId' => 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
