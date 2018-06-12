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












end
try=Weather.new
try.get_weather_data('London')
p try.get_hash
