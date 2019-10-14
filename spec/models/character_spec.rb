require 'rails_helper'

describe Character do
  before(:each) do
    @character = Character.new("Frank", "Hufflepuff")
  end

  it "set role" do
    expect(@character.role).to be nil
    @character.set_role("junior wizard")
    expect(@character.role).to eq("junior wizard")
  end

  it "set patronus" do
    expect(@character.patronus).to be nil
    @character.set_patronus("anteater")
    expect(@character.patronus).to eq("anteater")
  end
end
