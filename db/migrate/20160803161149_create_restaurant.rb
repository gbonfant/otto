class CreateRestaurant < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.point :geo
      t.string :photo_url
      t.timestamps
    end
  end
end
