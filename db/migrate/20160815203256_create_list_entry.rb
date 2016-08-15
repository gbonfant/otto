class CreateListEntry < ActiveRecord::Migration[5.0]
  def change
    create_table :list_entries do |t|
      t.belongs_to :list, index: true
      t.belongs_to :restaurant, index: true
      t.text :name
      t.text :description
      t.timestamps
    end
  end
end
