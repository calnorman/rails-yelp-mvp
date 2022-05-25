class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show edit update destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def top
    @top_restaurants = Restaurant.where(rating: 5)
  end

  def chef
    @chef_name
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

end
