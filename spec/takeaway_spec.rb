require 'takeaway'

describe Takeaway do
  let(:takeaway) { Takeaway.new }
  # let(:customer) { Customer.new }
  
  before { takeaway.customer 'Phoebe', '07943100432' }

  it 'has a menu with the dishes and prices' do
    expect(takeaway).to respond_to :menu_list
  end

  it 'the customers name is Phoebe' do
    expect(takeaway.customer_name).to eq 'Phoebe'
  end

  xit 'a customer can view the menu' do
    expect(takeaway.customer).to respond_to :view_menu
    # expect(customer.view_menu).to eq :menu_list
  end

end