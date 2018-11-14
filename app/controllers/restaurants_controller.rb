class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy]
  def new
    @restaurant = Restaurant.new
  end

  def show
  end

  def update
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurant_path
  end

  def index
    @restaurants = Restaurant.all
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
