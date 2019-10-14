class SearchController < ApplicationController
  def index
    key = ENV['POTTER_API_KEY']
    conn = Faraday.new(url: 'https://www.potterapi.com/v1', params: { key: key })

    oauth_response = conn.get('characters')
    characters = JSON.parse(oauth_response.body)
  end
end
