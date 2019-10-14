class SearchController < ApplicationController
  def index
    facade = SearchFacade.new
    @characters = facade.format_characters(params["house"])
  end
end
