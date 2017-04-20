class SpotifySearch

  include HTTParty
  base_uri 'https://api.spotify.com/v1/search'

  def self.get_results search_input

    url = "https://api.spotify.com/v1/search"+
          "?type=artist&limit=50&q=#{search_input}"

    results = []
    begin
      results = self.get(url)
    rescue Exception => e
      # handle any errors gracefully here
      Rails.logger.fatal "There was a problem fetching artists: " + e.to_s
    end

    return results

  end

end
