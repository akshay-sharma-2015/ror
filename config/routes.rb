Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
    resources :articles do
  		resources :comments
	end
	   root 'articles#index'
end