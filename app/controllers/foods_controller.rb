class FoodsController < ApplicationController

  def index
    @foods = Food.all
    @food = Food.find(params[:id])

  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def food_params
    params.require(:food).permit(:contraintes, :bring, :quantites)
  end
end
