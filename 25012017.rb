#read about classes: http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/
class Bike
  attr_accessor :colour, :brand
  attr_reader :price #notchangebale

  def initialize(colour, brand)
    @colour = colour
    @brand = brand
  end
  def self.describe #class method (needs to be defined in the class)
  "I am the class Bike, all bikes are mine."
  end
  def describe
    "I am a #{@colour} bike"
  end
  def move #instance method genel olmaz spesifik olmalı
  puts "I'm moving!"
  end
end
lauras_bike = Bike.new("red", "Surly")
lauras_bike.colour = "blue"
lauras_bike.move
