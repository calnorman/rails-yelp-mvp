class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show edit update destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def top
    @top_restaurants = Restaurant.where(rating: 5)
  end

  def chef
    @chef_name = @restaurant.chef_name
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
