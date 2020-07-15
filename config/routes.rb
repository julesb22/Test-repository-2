Rails.application.routes.draw do
  resources :articles
root 'test#action'
get 'about', to: 'test#action2'
end
