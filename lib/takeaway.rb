require_relative 'confirmation_text'

class Takeaway
  attr_reader :menu
  attr_accessor :customer_name, :customer_number, :customer_order

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

  def confirm_order
    confirmation = ""
      @customer_order.inject(confirmation) do |acc, (dish, quantity)| acc << "#{dish} x 3 #{dish} = £#{@menu[dish] * quantity}\n"
      end
      confirmation << "Order Total = £#{view_total_price}"
      confirmation
  end

  def delivery_text
    fail 'Sorry there seems to be a problem with your order' if @customer_order.empty? || !customer_number
    TakeawayText.new.send_text @customer_number, @customer_order
  end

end
