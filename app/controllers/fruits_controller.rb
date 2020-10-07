class FruitsController < ApplicationController
  def new
    @fruit = Fruit.new
  end
end
