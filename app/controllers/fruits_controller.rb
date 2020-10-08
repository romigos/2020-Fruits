# frozen_string_literal: true

class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
  end

  def new
    @fruit = Fruit.new
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def create
    @fruit = Fruit.new(fruit_params)
    if @fruit.save
      redirect_to @fruit
    else
      render 'new'
    end
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name, :color, :quantity)
  end
end
