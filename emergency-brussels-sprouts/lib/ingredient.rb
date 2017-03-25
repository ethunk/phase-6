class Ingredient
  attr_reader :name, :weight
  attr_writer

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, weight)
    self.new(name, weight/1000)
  end

end
