require 'rails_helper'

describe RestaurantsController do
  describe 'POST create' do
    it 'creates a new restaurant' do
      post :create, { restaurant: { name: 'Stockpot' } }

      expect(response).to redirect_to(restaurants_path)
    end
  end
end
