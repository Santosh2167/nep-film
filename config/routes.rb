Rails.application.routes.draw do
  # get 'movies/index'
  # get 'movies/show/:id'
  # post 'movies/create'
  # get 'movies/new'
  # get 'movies/edit'
  # put 'movies/update'
  # patch 'movies/update'
  # delete 'movies/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "movies", to:"movies#index"
  post "movies", to:"movies#create"
  get "movies/new", to:"movies#new"
  get "movies/:id", to:"movies#show", as:"movie"
  get "movies/:id/edit", to:"movies#edit"
  put "movies/:id", to:"movies#update"
  patch "movies/:id", to:"movies#update"
  destroy "movies/:id", to:"movies#destroy" 

end
