class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name, dishes = [])
    @opening_time = opening_time
    @name = name
    @dishes = dishes
  end

  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ":00"
  end

  def add_dish(dish)
    dishes << dish
  end

  def open_for_lunch?
    return @opening_time.split(':').first.to_i < 12
  end

  def menu_dish_names
    dish_names = []
    dishes.each do |dish|
      dish_names << dish.upcase
    end
    dish_names
  end
end
