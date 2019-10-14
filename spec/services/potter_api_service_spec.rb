require 'rails_helper'

describe "Potter API Service" do
  before(:each) do
    @service = SearchService.new
  end

  it "get characters" do
    expect(@service.get_characters("Gryffindor").class).to eq(Array)
    expect(@service.get_characters("Gryffindor").first).to have_key("name")
    expect(@service.get_characters("Gryffindor").first).to have_key("house")
    expect(@service.get_characters("Gryffindor").first).to have_key("orderOfThePhoenix")
  end
end
