require 'semantics3'

API_KEY = ENV['SEMANTICS3_API_KEY']
API_SECRET = ENV['SEMANTICS3_API_SECRET']

class Semantics3Controller < ApplicationController

  def search
    sem3 = Semantics3::Products.new(API_KEY, API_SECRET)

    sem3.products_field('name', params[:q])
    productsHash = sem3.get_products

    render json: productsHash['results']
  end

end
