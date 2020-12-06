class Product < ApplicationRecord
  belongs_to :category
  validates :name, :set, :color, :price, presence: true
  has_one_attached :image

  def self.search(search)
    where("category_id LIKE ?", "%#{search}")
  end
end
