class Takeaway
  attr_reader :menu_list
  attr_accessor :customer_name

  def menu_list
    hash = { 
      :meal_one => 5, 
      :meal_two => 8, 
      :meal_three => 10,
    }
  end

  def customer name = nil, number = nil
    @customer_name = name
  end

  def view_menu
    @view_menu = menu_list
  end
end