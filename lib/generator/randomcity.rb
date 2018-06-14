require 'json'
require 'yaml'

class Yamlandjson
  def initialize
    @user_credentials = YAML.load_file('./city_id.yml')
    @json_parse=JSON.parse(File.read('./city.list.json'))
  end
  def findname
    random_number=rand(0...@user_credentials.length)
    @result = @user_credentials[random_number]
    @json_parse.each do |index|
      index.each do |key,value|
        if value==@result
          cityname = index["name"]
          # puts cityname
          return cityname
        end
      end
    end
  end
end
