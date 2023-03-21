require_relative '../lib/item'

describe 'An item of food or a beverage' do
  it 'can be initialized' do
    item = Item.new('thing', 100)
    expect(item.name).to eq('thing')
    expect(item.volume).to eq(100)
  end
end
