class ArtistsController < ApplicationController

  def index
    query = params[:query] || "Radiohead"
    render json: SpotifySearch.get_results(query)
  end

end
