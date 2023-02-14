Rails.application.routes.draw do
  
  # ユーザー用
  # URL/user/sign_up...
  # URL/user/sign_in...
  devise_for :users,skip:[:passwords],controller:{
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  
  #管理者用
  # URL/admin/sign_in...
  devise_for :admins,skip:[:registrations, :passwords],controller:{
    sessions: "admin/sessions"
  }
  
  
  namespace :public do
    root to:"homes#top"
    
    resources:users,only:[:show,:edit,:update] 
    
    resources:posts do
      resources:reviews,only:[:new,:create,:destroy]
      resourse:favorites,only:[:create,:destroy]
      resourse:bookmarks,only:[:create,:destroy]
    end

  end
  
  
  namespace :admin do
    resources:users,only:[:index]
    resouses:reviews,only:[:destroy]
  end

end
