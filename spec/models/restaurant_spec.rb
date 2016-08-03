require 'rails_helper'

describe Restaurant do
  it 'validates the uniqueness of a name' do
    2.times { Restaurant.create(name: 'Stockpot') }

    expect(Restaurant.count).to eq(1)
  end
end
