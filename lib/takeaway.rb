class Takeaway
  attr_reader :menu
  attr_accessor :customer_name, :customer_number

  def initialize
    @menu = { 
      :lasagne => 8, 
      :salad => 5, 
      :dessert => 3
    }
      
  end

  def customer name = nil, number = nil
    @customer_name = name
    @customer_number = number
  end

  def display_menu
    @menu.inject("") { |output, (dish, price)| output << "Dish: #{dish}: £#{price} \n" }
  end
end
