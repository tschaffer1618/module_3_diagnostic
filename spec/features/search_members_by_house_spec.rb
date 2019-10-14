require 'rails_helper'

describe "A user" do
  it "can search for members by house" do
    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq('/search')

    expect(page).to have_content("Total Members: 21")

    within(".characters") do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end
  end
end
