class ParksService

  class << self

    def get_url(url, state)
      conn = Faraday.new(url: 'https://developer.nps.gov') do |faraday|
        faraday.params[:api_key] = ENV['parks_api_key']
        faraday.params[:state_code] = state
      end

      response = conn.get(url)

      JSON.parse(response.body, symbolize_names: true)
    end

    def get_park(state)
      get_url('/api/v1/parks', state)
    end

  end
end
