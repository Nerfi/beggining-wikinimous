Rails.application.routes.draw do
  get 'articles', to: 'articles#index'

  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'

  # NB: The `show` route needs to be *after* `new` route.
  get 'articles/:id', to: 'articles#show'

  get 'articles/:id/edit', to: 'articles#edit'
  patch 'articles/:id', to: 'articles#update'

resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
