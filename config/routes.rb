Rails.application.routes.draw do
  get '/session' => 'users#show'
  post '/signup' => 'users#create'
  post '/signin' => 'session#create'

  get '/semantics3/search' => 'semantics3#search'
  get '/instagram/tags' => 'instagram#tags'
  get '/instagram/recent' => 'instagram#recent_media'
  get '/youtube/search' => 'youtube#search'

  resources :categories, except: [:new, :edit]
  resources :products, except: [:new, :edit]
  resources :reviews, except: [:new, :edit]
end
