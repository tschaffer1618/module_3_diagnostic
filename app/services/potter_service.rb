class PotterService
  def get_characters(house*)
    oauth_response = conn.get('/characters', params: { house: house })
    JSON.parse(oauth_response.body)
  end

  private

  def conn
    key = ENV['POTTER_API_KEY']
    Faraday.new(url: 'https://www.potterapi.com/v1', params: { key: key })
  end
end
