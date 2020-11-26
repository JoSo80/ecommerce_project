class Product < ApplicationRecord
  belongs_to :category
  validates :name, :type, :color, :description, :price, presence: true
  has_one_attached :image
end
