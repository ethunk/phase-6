require 'pry'

class Airplane

attr_accessor :type, :wing_load, :hp, :engine, :state

  def initialize(type, wing_load, hp)
    @type = type
    @wing_load = wing_load
    @hp = hp
    @engine = false
    @state = 'ground' #ground, airborne
  end

  def start
    if @engine == false
      @engine = true
      answer = 'Engine is now ON'
    else
      answer = 'Engine is ALREADY ON'
    end
    answer
  end

  def takeoff
    if engine == true
      answer = "airplane airborne"
      @state = 'airborne'
    else
      answer = "airplane not started, please start"
    end
    answer
  end

  def land
    if @state == 'ground'
      answer = "Airplane is already on the ground"
    else
      answer = "Airplane has landed"
      @state = 'ground'
    end
    answer
  end

end
