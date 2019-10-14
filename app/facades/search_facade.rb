class SearchFacade
  def initialize
    @potter_service = SearchService.new
  end

  def format_characters(house)
    characters = @potter_service.get_characters(house)
    binding.pry
    characters.each do |char_hash|
      char = Character.new(char_hash['name'], char_hash['house'])
      if char_hash['role']
        char.set_role(char_hash['role'])
      end
      if char_hash['patronus']
        char.set_patronus(char_hash['patronus'])
      end
    end
  end
end
