require 'rails_helper'

describe RestaurantCreation do
  describe '#call' do
    before do
      allow(Review).to receive(:create!).and_return(true)
      allow(Restaurant).to receive(:create!).and_return(true)
    end

    it 'creates a restaurant and review' do
      described_class.new({ name: 'Foo', description: 'Bar' }).call

      expect(Review).to have_received(:create!)
      expect(Restaurant).to have_received(:create!)
    end
  end
end
