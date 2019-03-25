class Weather < ApplicationRecord

  def self.setWeather
    return Weather.all.last
  end

  def returnCategories
    Categories.all.collect do |category|
      if category.min_temp <= Weather.setWeather.temperature
  end
  end


end
