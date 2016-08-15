require 'rails_helper'

describe RestaurantCreation do
  describe '#call' do
    let(:params) { { name: 'Foo', description: 'Bar' } }

    before do
      allow(Review).to receive(:create)
      allow(Restaurant).to receive(:create)
    end

    context 'on a successfull call' do
      before do
        described_class.new(params).call
      end

      it 'creates a restaurant' do
        expect(Restaurant).to have_received(:create).with(name: 'Foo')
      end

      it 'creates an associated review' do
        expect(Review).to have_received(:create).with({
          restaurant: nil, description: 'Bar'
        })
      end
    end

    context 'on an unsuccessful call' do
      before do
        allow_any_instance_of(described_class).to receive(:valid?).and_return(false)
      end

      it 'does not create a restaurant' do
        expect(Restaurant).not_to have_received(:create)
      end

      it 'does not create a review' do
        expect(Review).not_to have_received(:create)
      end
    end
  end
end
