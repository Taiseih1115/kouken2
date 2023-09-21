Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'kouken/syoukai' => 'koukens#syoukai'
  get 'kouken/top' => 'koukens#top'
  get 'kouken/event' => 'koukens#event'
  
  resources :koukens
  root 'koukens#top'

end
