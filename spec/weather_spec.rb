require 'spec_helper'

describe Weather do

  context 'requesting information based on a postcode' do
    before(:all) do
      @weather = Weather.new
      @response = @weather.get_weather_data("london")
    end


    it "It should be a return type of Hash" do
      expect(@weather.get_hash).to be_kind_of(Hash)
    end

    it "longitude should be -0.13" do
      expect(@weather.get_long).to eq(-0.13)
    end

    it "latitude should be 51.51" do
      expect(@weather.get_lat).to eq(51.51)
    end

    it "The id should be 803" do
      expect(@weather.get_id_one).to eq(803)
    end

    it "its should be rain" do
      expect(@weather.get_rain).to eq("rain")
    end

    it "the description should be light rain" do
      expect(@weather.get_description).to eq("light rain")
    end

    it "the icon shoud be 10d" do
      expect(@weather.get_icon).to eq("10d")
    end

    it "the base should be stations" do
      expect(@weather.get_base).to eq("stations")
    end

    it "the temp should be 289.95" do
      expect(@weather.get_temp).to eq("stations")
    end
    it "the temp should be a float" do
      expect(@weather.get_temp_float).to be_kind_of(Float)
    end
    it "the pressure should be 1018" do
      expect(@weather.get_pressure).to eq 1018
    end
    it "the humidity should be 72" do
      expect(@weather.get_humidity).to eq 72
    end
    it "the minimum temp should be 288.15" do
      expect(@weather.get_minimum_temp).to eq 288.15
    end
    it "the max temp shoud be 291.15" do
      expect(@weather.get_max_temp).to eq 291.15
    end
    it "the visibility should be 10000" do
      expect(@weather.get_visubility).to eq 10000
    end
    it "the speed should be 3" do
      expect(@weather.get_speed).to eq 3
    end
    it "the degrees should be 60" do
      expect(@weather.get_degrees).to eq 60
    end
    it "the all should be 90" do
      expect(@weather.get_all).to eq 90
    end
    it "the dt should be 1528816800" do
      expect(@weather.get_dt).to eq 1528816800
    end
    it "type should be 1" do
      expect(@weather.get_type).to eq 1
    end
    it "id should be 1 " do
      expect(@weather.get_id).to eq 1
    end
    it "message should be 0.0033" do
      expect(@weather.get_message).to eq 0.033
    end
    it "country should be GB" do
      expect(@weather.get_country).to eq "GB"
    end
    it "sunrise should be 1528774988" do
      expect(@weather.get_sunrise).to eq 1528774988
    end
    it "sunset should be 1528834691" do
      expect(@weather.get_sunset).to eq 1528834691
    end
    it "id should be 2643743" do
      expect(@weather.get_id).to eq 2643743
    end
    it "name should equal london" do
      expect(@weather.get_name).to eq "london"
    end
    it "cod should be 200" do
      expect(@weather.get_cod).to eq 200
    end



  end

end
