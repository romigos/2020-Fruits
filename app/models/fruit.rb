class Fruit < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true
  validates :quantity, presence: true
end
