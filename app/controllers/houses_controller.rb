class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def new
    @house = House.new

  end

  def create
    @house = House.create(house_params)
    @character = Character.create()
    if !@house.errors.empty?
      render :new
    else
      redirect_to house_path(@house)
    end
  end

  def show
    @house = House.find(params[:id])
    @character = Character.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    if !@house.errors.empty?
      render :edit
    else
      redirect_to house_path(@house)
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private

  def house_params
    params.require(:house).permit!
  end

end
