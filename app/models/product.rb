class Product < ApplicationRecord
  belongs_to :category
  validates :name, :set, :color, :price, presence: true
  has_one_attached :image
end
