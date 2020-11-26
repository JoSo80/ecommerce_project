class Category < ApplicationRecord
  has_many :products
  validates :set_name, presence: true
end
