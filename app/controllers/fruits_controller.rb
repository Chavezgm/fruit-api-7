class FruitsController < ApplicationController

  def index
    # require 'pry'; binding.pry
    
    facade = FruitFacade.new(params[:search])
    @fruit = facade.fruit_by_name
    # require 'pry'; binding.pry
  end

end
