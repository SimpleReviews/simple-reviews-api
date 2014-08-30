Rails.application.routes.draw do
  get '/semantics3/search' => 'semantics3#search'
  get '/instagram/tags' => 'instagram#tags'
  get '/instagram/recent' => 'instagram#recent_media'
  get '/youtube/search' => 'youtube#search'

  resources :categories, except: [:new, :edit]
  resources :products, except: [:new, :edit]
  resources :reviews, except: [:new, :edit]
end
