Rails.application.routes.draw do
  devise_for :users

  scope "(:locale)", locale: /#{I18n.available_locales.join('|')}/ do
    root 'page#home'
    get '/home' => 'page#home', :as => 'home'
    get '/account' => 'page#account', :as => 'account'
  end
end
