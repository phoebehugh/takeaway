require 'customer'

describe Customer do
  let(:customer) { Customer.new }
  it 'can view a menu' do
    expect(customer.view_menu).to eq :menu_list
  end
end
