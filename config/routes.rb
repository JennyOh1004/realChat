Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :chats, action: :index

  resources :chat_messages
  resources :chats

  get 'about', to: 'chats#about'
end
