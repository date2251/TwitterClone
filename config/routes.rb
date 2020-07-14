Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

	get 'signup', to: 'users#new'
	resources :users, only: [:index, :new, :show, :create]

	resources :tweets, only: [:create, :destroy]
end
