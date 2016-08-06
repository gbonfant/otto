require 'rails_helper'

describe RestaurantsController do
  describe 'POST create' do
    before do
      post :create, params: {
        restaurant: { name: 'Stockpot', description: 'Really like it!'}
      }
    end

    it 'redirects to :index' do
      expect(response).to redirect_to(restaurants_path)
    end

    it 'creates a new restaurant and associated review' do
      expect(Restaurant.last.name).to eq('Stockpot')
      expect(Review.last.description).to eq('Really like it!')
    end
  end
end
