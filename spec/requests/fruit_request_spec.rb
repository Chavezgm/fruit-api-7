require "rails_helper"

describe 'Fruit Search' do
  it 'returns a fruit when fruit is searched ' do
    # fruit_name = "banana"

    fruit_name = "banana"
    get "/fruits", params: { search: fruit_name }

    # require 'pry'; binding.pry
    expect(response.status).to eq(200)
    expect(response).to be_successful
    
    expect(response.body).to include("Name: Banana")
    expect(response.body).to include("Family: Musaceae")
    expect(response.body).to include("Order: Zingiberales")
    expect(response.body).to include("Genus: Musa")
    expect(response.body).to include("Calories: 96")
    expect(response.body).to include("Fat: 0.2")
    expect(response.body).to include("Sugar: 17.2")
    expect(response.body).to include("Carbohydrates: 22.0")
    expect(response.body).to include("Protein: 1.0")




  end
end