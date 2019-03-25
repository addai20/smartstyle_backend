class WeathersController < ApplicationController
  before_action :find_weather, only: [:update]

  def create
      @weather = Weather.create!(weather_params)
      render json: @weather
  end

  def update
    @weather.update(weather_params)
    if @weather.save
      render json: @weather, status: :accepted
    else
      render json: { errors: @weather.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def weather_params
    params.require(:weather).permit(:condition, :temperature, :sub_condition, :sub_id)
  end

  def find_weather
    @weather = Item.find(params[:id])
  end

end
