require 'instagram'

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_CLIENT_ID']
  config.client_secret = ENV['INSTAGRAM_CLIENT_SECRET']
end

class InstagramController < ApplicationController

  def tags
    client = Instagram.client({})
    tags = client.tag_search(params[:q])
    render json: tags
  end

  def recent_media
    client = Instagram.client({})
    recent_media = client.tag_recent_media(params[:name], {:count => 10})
    render json: recent_media
  end

end
