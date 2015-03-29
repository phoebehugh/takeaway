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

end

context 'Takeaway customer' do

  let(:takeaway) { Takeaway.new }

  it 'can view the takeaway menu' do
    display_menu = "Dish: lasagne: £8 \nDish: salad: £5 \nDish: dessert: £3 \n"
    expect(takeaway.display_menu).to eq display_menu
  end

  xit 'can select some dishes' do
  end

  xit 'can check the total for order is correct' do
  end

  xit 'will receive a text when order has been made' do
  end

end
