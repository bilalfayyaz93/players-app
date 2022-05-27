class Player < ApplicationRecord
  has_one_attached :image

  validates :last_name, presence: true
  validates :number, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 100 }
end
