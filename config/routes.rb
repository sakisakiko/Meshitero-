Rails.application.routes.draw do
  namespace :admin do
    get 'reviews/index'
  end
  namespace :admin do
    get 'users/index'
  end
  namespace :public do
    get 'bookmarks/index'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
  end
  namespace :public do
    get 'posts/new'
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
