require "rails_helper"

RSpec.describe FruitPoro do
  it 'initializes with attributes' do
    attributes =  {
      name: "Banana",
      id: 1,
      family: "Musaceae",
      order: "Zingiberales",
      genus: "Musa",
      nutritions: {
        calories: 96,
        fat: 0.2,
        sugar: 17.2,
        carbohydrates: 22.0,
        protein: 1.0
      }
    }

    fruit_banana = FruitPoro.new(attributes)
    # require 'pry'; binding.pry
    expect(fruit_banana).to be_a(FruitPoro)
    expect(fruit_banana.name).to eq("Banana")
    expect(fruit_banana.id).to eq(1)
    expect(fruit_banana.family).to eq("Musaceae")
    expect(fruit_banana.order).to eq("Zingiberales")
    expect(fruit_banana.genus).to eq("Musa")
    expect(fruit_banana.calories).to eq(96)
    expect(fruit_banana.fat).to eq(0.2)
    expect(fruit_banana.sugar).to eq(17.2)
    expect(fruit_banana.carbohydrates).to eq(22.0)
    expect(fruit_banana.protein).to eq(1.0)
  end
end