class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.create(params[:plant_name][:acquired][:indoor][:outdoor][:repot][:owner_id])
    byebug
    redirect_to "/plants/#{@plant.id}"
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to @plant

  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to "/plants"

  end

  private
  def plant_params
    params.require(:plant).permit(:plant_nickname, :indoor, :outdoor, :repot, :plant_name, :acquired)
  end
end
