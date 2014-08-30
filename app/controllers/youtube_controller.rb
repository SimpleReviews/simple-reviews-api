require 'youtube_it'

class YoutubeController < ApplicationController

  def search
    client = YouTubeIt::Client.new
    results = client.videos_by(:query => params[:q] + ' review', :per_page => 10)
    render json: results.videos
  end

end
