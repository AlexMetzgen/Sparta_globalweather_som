# require_relative 'service/weather_service'
require 'httparty'
require 'json'



class Weather
  include HTTParty
   base_uri 'http://api.openweathermap.org/data/2.5/weather?APPID=732ea3ca59c54eb2f9155985ade03ff4'

   def get_weather_data(city)
    @weather_data=JSON.parse(self.class.get("&q=#{city}").body)
    end
  # def weather_conditions
  #   Generateweather.new
  # end

  # def single_postcode_service
  #   SinglePostcodeService.new
  # end

  def get_hash
    @weather_data
  end

  def get_long
    @weather_data["coord"]["lon"]
  end

  def get_lat
    @weather_data["coord"]["lat"]
  end

  def get_id_one
    @weather_data["weather"][0]["id"]
  end
  def get_clouds
    @weather_data["weather"][0]["main"]
  end
  def get_description
    @weather_data["weather"][0]["description"]
  end
  def get_icon
    @weather_data["weather"][0]["icon"]
  end
  def get_base
    @weather_data["base"]
  end
  def get_temp
    @weather_data["main"]["temp"]
  end
  def get_pressure
    @weather_data["main"]["pressure"]
  end
  def get_humidity
    @weather_data["main"]["humidity"]
  end
  def get_minimum_temp
    @weather_data["main"]["temp_min"]
  end
  def get_max_temp
    @weather_data["main"]["temp_max"]
  end
  def get_visibility
      @weather_data["visibility"]
  end
  def get_speed
    @weather_data["wind"]["speed"]
  end
  def get_degrees
    @weather_data["wind"]["deg"]
  end
  def get_all
    @weather_data["clouds"]["all"]
  end
  def get_dt
    @weather_data["dt"]
  end
  def get_type
    @weather_data["sys"]["type"]
  end
  def get_id_two
    @weather_data["sys"]["id"]
  end
  def get_message
    @weather_data["sys"]["message"]
  end

  def get_country
    @weather_data["sys"]["country"]
  end
  def get_sunrise
    @weather_data["sys"]["sunrise"]
  end
  def get_sunset
    @weather_data["sys"]["sunset"]
  end
  def get_id
    @weather_data["id"]
  end
  def get_name
    @weather_data["name"]
  end
  def get_cod
    @weather_data["cod"]
  end

end
