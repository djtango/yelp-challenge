require 'rails_helper'
describe Restaurant do
  it { should have_many :reviews }

  it 'is not valid with a name less than three characters' do
    restaurant = Restaurant.new(name: 'KF')
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end
end
