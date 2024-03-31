class FruitFacade
 
  def initialize(fruit_name)
    @fruit_name = fruit_name
  end

  def fruit_by_name
    fruit_service = FruityViceService.new

    result = fruit_service.get_fruit_by_name(@fruit_name)
    FruitPoro.new(result)

  end
end