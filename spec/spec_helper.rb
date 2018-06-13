require 'rspec'
require_relative '../lib/superclass'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
