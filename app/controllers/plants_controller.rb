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
    @plant = Plant.new(create_params)
    @plant.save

    redirect_to @plant

  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])

    @plant.update(update_params)
    redirect_to @plant

  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to "/plants"

  end

  private

  def create_params
    params.require(:plant).permit( :plant_name, :plant_nickname, :repot, :acquired, :owner_id)
  end

  def update_params
    params.require(:plant).permit( :plant_name, :plant_nickname, :repot, :acquired, :owner_id, :indoor, :outdoor)
  end


end
