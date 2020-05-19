class Member
  attr_reader :name, :role, :house, :patronus, :order_of_phoenix
  def initialize(attributes)
    @name = attributes[:name]
    @role = attributes[:role]
    @house = attributes[:house]
    @patronus = attributes[:patronus]
    @order_of_phoenix = attributes[:orderOfThePhoenix]
  end
end