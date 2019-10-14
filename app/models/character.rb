class Character
  attr_reader :name, :role, :house, :patronus

  def initialize(name, house)
    @name = name
    @house = house
    @role = nil
    @patronus = nil
  end

  def set_role(role)
    @role = role
  end

  def set_patronus(patronus)
    @patronus = patronus
  end
end
