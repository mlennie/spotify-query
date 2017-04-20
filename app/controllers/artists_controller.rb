class ArtistsController < ApplicationController

  def index
    query = params[:query] || "ed shereen"
    render json: SpotifySearch.get_results(query)
  end

end
