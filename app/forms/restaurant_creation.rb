class RestaurantCreation
  include ActiveModel::Model

  attr_accessor :name, :description

  validates :name, presence: true
  validates :description, presence: true

  def call
    if valid?
      persist!
    end
  end

  private

  def persist!
    Restaurant.create!(name: name).tap do |restaurant|
      Review.create!(restaurant: restaurant, description: description)
    end
  end
end
