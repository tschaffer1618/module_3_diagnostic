require 'rails_helper'

describe "A user" do
  it "can search for members by house" do
    visit '/'

    select "Gryffindor", from: :house

    click_on "Search for Members"

    expect(current_path).to eq('/search')


  end
end
