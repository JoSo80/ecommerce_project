class Search < ApplicationRecord
  def search_products
    products = Product.all

    products = products.where(["name LIKE ?", "%#{keywords}%"]) if keywords.present?
    products = products.where(["color LIKE ?", color]) if color.present?
    products = products.where(["price >= ?", min_price]) if min_price.present?
    products = products.where(["price <= ?", max_price]) if max_price.present?

    products
  end
end
