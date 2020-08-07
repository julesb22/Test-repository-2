Rails.application.routes.draw do
root 'test#action'
get 'about', to: 'test#action2'
resources :articles
end
