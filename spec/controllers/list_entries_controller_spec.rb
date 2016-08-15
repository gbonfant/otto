require 'rails_helper'

describe ListEntriesController do
  describe 'POST create' do
    it 'creates a new list entry' do
      list_entry_params = {
        list_entry: { name: 'GBK Soho', description: 'Best restaurant UK' }
      }

      post :create, params: list_entry_params

      expect(ListEntry.count).to eq(1)
    end
  end
end
