require 'rails_helper'

describe Review, type: :model do
  it {should belong_to :restaurant}
  it 'it is invalid if the raiting is more than 5' do
    review = Review.new(rating:10)
    expect(review).to have(1).error_on(:rating)
  end
end
