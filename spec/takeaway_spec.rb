require 'takeaway'

context 'Takeaway' do
  
  let(:takeaway) { Takeaway.new }
  
  before { takeaway.customer 'Phoebe', '07943100432' }

  it 'has a menu with the dishes and prices' do
    expect(takeaway).to respond_to :menu
    # expect(takeaway.menu_list).to eq
  end

  it 'knows the customers name' do
    expect(takeaway.customer_name).to eq 'Phoebe'
  end

  it 'knows the customers phone number' do
    expect(takeaway.customer_number).to eq '07943100432'
  end

  it 'knows how many dishes are available' do
    expect(takeaway.menu.count).to eq 3
  end

  it 'lasagne costs £8' do
    expect(takeaway.menu[:lasagne]).to eq 8
  end

  it 'salad costs £5' do
    expect(takeaway.menu[:salad]).to eq 5
  end

  it 'dessert costs £3' do
    expect(takeaway.menu[:dessert]).to eq 3
  end

end

context 'Takeaway customer' do

  let(:takeaway) { Takeaway.new }

  it 'can view the takeaway menu' do
    display_menu = "Dish: lasagne: £8 \nDish: salad: £5 \nDish: dessert: £3 \n"
    expect(takeaway.display_menu).to eq display_menu
  end

  it 'can select a dish to order' do
    order_one = { "lasagne": 1 }
    expect(takeaway.customer_order(order_one)).to eq order_one
  end

  it 'can select more than one dish to order' do
    order_two = { "lasagne": 3, "salad": 1, "dessert": 2}
    expect(takeaway.customer_order(order_two)).to eq order_two
  end

  it 'can see the total price for the order' do
    takeaway.customer_order("lasagne": 3)
    expect(takeaway.view_total_price).to eq 24
  end

  xit 'can check the total for order is correct' do
  end

  xit 'will receive a text when order has been made' do
  end

end
