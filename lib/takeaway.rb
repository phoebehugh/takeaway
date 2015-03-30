class Takeaway
  attr_reader :menu
  attr_accessor :customer_name, :customer_number

  def initialize
    @menu = { 
      :lasagne => 8, 
      :salad => 5, 
      :dessert => 3
    }
    @customer_order = {}
  end

  def customer name = nil, number = nil
    @customer_name = name
    @customer_number = number
  end

  def display_menu
    @menu.inject("") { |output, (dish, price)| output << "Dish: #{dish}: £#{price} \n" }
  end

  def customer_order(dish)
    @customer_order.merge!(dish)
  end

  def view_total_price
    @customer_order.inject(0) { |price, (dish, quantity)| price += (@menu[dish] * quantity) }
  end

end
