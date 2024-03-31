require "rails_helper"

RSpec.describe FruitFacade do
  before(:each) do

  end

  describe '#initialize' do
    it 'creates a Fruit facade object', :vcr do
      facade = FruitFacade.new("orange")

      expect(facade).to be_an_instance_of(FruitFacade)
    end
  end

  describe '#fruit_by_name' do
    it 'calls fruit on service and returns an array of Fruit objects' do

      facade = FruitFacade.new("banana")

      fruit = facade.fruit_by_name
      # require 'pry'; binding.pry
      expect(fruit).to be_an_instance_of FruitPoro
      expect(fruit.calories).to be_a(Integer)
      expect(fruit.carbohydrates).to be_a(Float)
      expect(fruit.family).to be_a(String)
      expect(fruit.fat).to be_a(Float)
      expect(fruit.genus).to be_a(String)
      expect(fruit.id).to be_a(Integer)
      expect(fruit.name).to be_a(String)
      expect(fruit.order).to be_a(String)
      expect(fruit.protein).to be_a(Float)
      expect(fruit.sugar).to be_a(Float)
    end
  end
end

