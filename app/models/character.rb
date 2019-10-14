class Character < ApplicationRecord
  attr_reader :name, :role, :house, :patronus

  def initialize(name, house, role, patronus)
    @name = name
    @house = house
    @role = role
    @patronus = patronus
  end
end
