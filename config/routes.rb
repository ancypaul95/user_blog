Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'blogs#index'
  resources :blogs do
    resources :likes
  end
end
