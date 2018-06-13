require 'spec_helper'

describe Superclass do

  context 'requesting information based on a postcode' do
    before(:all) do
      @weather = Superclass.new.city_weather
      name=Superclass.new.generator.findname
      @weather_data=@weather.get_weather_data(name)
    end
    it "It should be a return type of Hash" do
      expect(@weather.get_hash).to be_kind_of(Hash)
    end

    it "longitude should be a float" do
      expect(@weather.get_long).to be_kind_of(Float)
    end

    it "latitude should be float" do
      expect(@weather.get_lat).to be_kind_of(Float)
    end

    it "The id should be integer" do
      expect(@weather.get_id_one).to be_kind_of(Integer)
    end

    it "main should be string" do
      expect(@weather.get_clouds).to be_kind_of(String)
    end

    it "the description should be a string" do
      expect(@weather.get_description).to be_kind_of(String)
    end

    it "the icon shoud be a string" do
      expect(@weather.get_icon).to be_kind_of(String)
    end

    it "the base should be string" do
      expect(@weather.get_base).to be_kind_of(String)
    end

    it "the temp should be a float" do
      expect(@weather.get_temp).to be_kind_of(Float)
    end
    it "the pressure should return a string" do
      expect(@weather.get_pressure).to be_kind_of(Integer).or be_kind_of(Float)
    end
    it "the humidity should be integer" do
      expect(@weather.get_humidity).to be_kind_of(Integer)
    end
    it "the humidity should be between 0 and 100" do
      expect(@weather.get_humidity).to be_between(0,100).inclusive
    end
    it "the minimum temp should be Float" do
      expect(@weather.get_minimum_temp).to be_kind_of(Float)
    end
    it "the max temp shoud be Float" do
      expect(@weather.get_max_temp).to be_kind_of(Float)
    end
    it "the visibility should be integer" do
      expect(@weather.get_visibility).to be_kind_of(Integer)
    end
    it "the speed should be integer" do
      expect(@weather.get_speed).to be_kind_of(Float)
    end
    it "the degrees should be integer" do
      expect(@weather.get_degrees).to be_between(0,360)
    end
    it "the degrees should be between 1 and 360 degrees" do
      expect(@weather.get_degrees).to be_between(0,360)
    end
    it "the all should be integer" do
      expect(@weather.get_all).to be_kind_of(Integer)
    end
    it "the dt should be integer" do
      expect(@weather.get_dt).to be_kind_of(Integer)
    end
    it "type should be integer" do
      expect(@weather.get_type).to be_kind_of(Integer)
    end
    it "id should be integer " do
      expect(@weather.get_id_two).to be_kind_of(Integer)
    end
    it "message should be float" do
      expect(@weather.get_message).to be_kind_of(Float)
    end
    it "country should be string" do
      expect(@weather.get_country).to be_kind_of(String)
    end
    it "sunrise should be integer" do
      expect(@weather.get_sunrise).to be_kind_of(Integer)
    end
    it "sunset should be a integer" do
      expect(@weather.get_sunset).to be_kind_of(Integer)
    end
    it "id should be integer" do
      expect(@weather.get_id).to be_kind_of(Integer)
    end
    it "name should be a string" do
      expect(@weather.get_name).to be_kind_of(String)
    end
    it "cod should be integer" do
      expect(@weather.get_cod).to be_kind_of(Integer)
    end



  end

end
