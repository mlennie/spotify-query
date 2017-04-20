require 'json'

class ArtistsController < ApplicationController

  def index
    query = params[:query] || "Radiohead"
    results = SpotifySearch.get_results(query)
    FavoriteArtist.create(results: results.to_s) unless results.empty?
    render json: results
  end

end
