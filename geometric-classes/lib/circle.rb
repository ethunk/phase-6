require 'pry'
class Circle

  attr_accessor :radius, :x, :y

  def initialize(radius, x=0 , y=0)
    @radius = radius
    @x = x
    @y = y
  end

end

circle=Circle.new(4)

# binding.pry
