class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name, dishes = [])
    @opening_time = opening_time
    @name = name
    @dishes = dishes
  end

end
