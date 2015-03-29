class Menu
  attr_reader :menu_list

  def menu_list
    hash = { 
      :meal_one => 5, 
      :meal_two => 8, 
      :meal_three => 10,
    }
  end
  puts hash
end
