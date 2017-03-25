require 'pry'
class Circle

  attr_accessor :radius, :x, :y

  def initialize(radius, x=0 , y=0)
    @radius = radius
    @x = x
    @y = y
  end

  def diameter
    diameter = 2*@radius
  end
  def area
    area = 3.1416*@radius**2
  end
  def perimeter
    perimeter = 3.14*2*@radius
  end
end

circle=Circle.new(4)

# binding.pry
