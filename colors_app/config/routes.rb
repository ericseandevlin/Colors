Rails.application.routes.draw do
  resources :users
  resources :posts

  root 'posts#index'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get    'color_all'   => 'colors#index'
  get    'color_new'   => 'colors#new'
  post   'color_post'   => 'colors#create'
  delete 'color_del'  => 'colors#destroy'

end

# Prefix    Verb   URI Pattern               Controller#Action
# users     GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
# new_user  GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
# user      GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
# posts     GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
# new_post  GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
# post      GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
# root      GET    /                         posts#index
# login     GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
# logout    DELETE /logout(.:format)         sessions#destroy
