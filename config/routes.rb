Rails.application.routes.draw do
  devise_for :users
  root 'page#home'
  get '/home' => 'page#home', :as => 'home'
  get '/refresh_news' => 'news#refresh', :as => 'refresh'
end
