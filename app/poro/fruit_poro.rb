class FruitPoro
  attr_reader :id, :name, :family, :order, :genus, :calories, :fat,:sugar, :carbohydrates, :protein
  def initialize(fruit_attributes)
    @id = fruit_attributes[:id]
    @name = fruit_attributes[:name]
    @family = fruit_attributes[:family]
    @order = fruit_attributes[:order]
    @genus = fruit_attributes[:genus]
    @calories = fruit_attributes[:nutritions][:calories]
    @fat = fruit_attributes[:nutritions][:fat]
    @sugar = fruit_attributes[:nutritions][:sugar]
    @carbohydrates = fruit_attributes[:nutritions][:carbohydrates]
    @protein = fruit_attributes[:nutritions][:protein]

  end
end