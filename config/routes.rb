Rails.application.routes.draw do
  get '/semantics3/search' => 'semantics3#search'

  resources :categories, except: [:new, :edit]
  resources :products, except: [:new, :edit]
  resources :reviews, except: [:new, :edit]
end
