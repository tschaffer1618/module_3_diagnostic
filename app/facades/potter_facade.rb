class PotterFacade
  def initialize
    @potter_service = PotterService.new
  end

  def format_characters(house*)
    characters = @potter_service.get_characters(house*)
    characters.each do |char|
      Character.new()
    end
  end
end
