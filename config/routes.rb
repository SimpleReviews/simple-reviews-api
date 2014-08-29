Rails.application.routes.draw do
  resources :categories, except: [:new, :edit]
  resources :products, except: [:new, :edit]
  resources :reviews, except: [:new, :edit]
end
