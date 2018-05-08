Rails.application.routes.draw do
  get 'lions/create'

  get 'lions/destroy'

  root 'likes#index'

  get 'likes/index'

  get 'likes/new'

  post 'likes/create'

  get 'likes/show/:like_id' => 'likes#show', :as => 'likes_show'

  get 'likes/edit/:like_id' => 'likes#edit'

  post 'likes/update/:like_id' => 'likes#update'

  get 'likes/destroy/:like_id' => 'likes#destroy'

  post 'likes/show/:like_id/lions/create' => 'lions#create'

  get 'likes/show/:like_id/lions/destroy/:lion_id' => 'lions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
