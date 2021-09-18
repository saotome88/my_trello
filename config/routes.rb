Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root 'tops#index'
  resources :lists, only:[:new, :create, :edit, :update, :destroy] do
    resources :cards, only:[:new, :create]
  end
end
