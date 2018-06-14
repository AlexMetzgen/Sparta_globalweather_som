require_relative 'services/weather'
require_relative 'generator/randomcity'

class Superclass
  def city_weather
    Weather.new
  end
  
  def generator
    Yamlandjson.new
  end
end
