require 'pry'
class Square

  attr_accessor :side, :x, :y


  def initialize(side, x = 0, y = 0)
    @side = side
    @x = x
    @y = y
  end

  def length
    @side
  end
  def width
    @side
  end
  def diameter
    diameter = Math.sqrt(2)*@side
  end
  def perimeter
    perimeter = @side*4
  end
  def area
    area = @side**2
  end
  def contains_point?(x,y)
    dta = @side.to_f/2
    if ((x >= (@x-dta)) && (x <= (@x+dta))) && ((y >= (@y-dta)) && (y <= (@y+dta)))
      answer = true
    else
      answer = false
    end
    answer
    # binding.pry
  end



end
