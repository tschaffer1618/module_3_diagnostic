class SearchFacade
  def initialize
    @potter_service = SearchService.new
  end

  def format_characters(house)
    characters = @potter_service.get_characters(house)
    characters.each do |char_hash|
      Character.new(char_hash['name'], char_hash['house'], char_hash['role'], char_hash['patronus'])
    end
  end
end
