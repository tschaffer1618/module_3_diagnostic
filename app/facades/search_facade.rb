class SearchFacade
  def initialize
    @potter_service = SearchService.new
  end

  def format_characters(house)
    all_characters = @potter_service.get_characters(house)
    selected_characters = []
    all_characters.each do |char_hash|
      if char_hash['orderOfThePhoenix']
        char = Character.new(char_hash['name'], char_hash['house'])
        if char_hash['role']
          char.set_role(char_hash['role'])
        end
        if char_hash['patronus']
          char.set_patronus(char_hash['patronus'])
        end
        selected_characters << char
      end
    end
    selected_characters
  end
end
