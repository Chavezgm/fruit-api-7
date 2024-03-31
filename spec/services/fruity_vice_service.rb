require "rails_helper"

describe FruityViceService do
  it 'get_fruit_by_name' do
   search = FruityViceService.new.get_fruit_by_name("Banana")
  #  require 'pry'; binding.pry

   expect(search).to be_a(Hash)

   expect(search).to have_key(:name)
   expect(search[:name]).to be_a(String)

   expect(search).to have_key(:id)
   expect(search[:id]).to be_a(Integer)

   expect(search).to have_key(:family)
   expect(search[:family]).to be_a(String)

   expect(search).to have_key(:order)
   expect(search[:order]).to be_a(String)

   expect(search).to have_key(:genus)
   expect(search[:genus]).to be_a(String)

   expect(search).to have_key(:nutritions)
   expect(search[:nutritions]).to be_a(Hash)

   expect(search[:nutritions]).to have_key(:calories)
   expect(search[:nutritions][:calories]).to be_a(Integer)

   expect(search[:nutritions]).to have_key(:fat)
   expect(search[:nutritions][:fat]).to be_a(Float)

   expect(search[:nutritions]).to have_key(:sugar)
   expect(search[:nutritions][:sugar]).to be_a(Float)

   expect(search[:nutritions]).to have_key(:carbohydrates)
   expect(search[:nutritions][:carbohydrates]).to be_a(Float)

   expect(search[:nutritions]).to have_key(:protein)
   expect(search[:nutritions][:protein]).to be_a(Float)


   


  end
end