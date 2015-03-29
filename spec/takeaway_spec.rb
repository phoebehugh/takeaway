require 'takeaway'

describe Takeaway do
  let(:takeaway) { Takeaway.new }
  
  it 'has a menu with the dishes and prices' do
    expect(takeaway).to respond_to :menu_list
  end
end

end