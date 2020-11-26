NUMBER_OF_CATEGORIES = 4
PRODUCTS_PER_CATEGORY = 4

Product.delete_all
Category.delete_all

NUMBER_OF_CATEGORIES.times do
  category = Category.create(name: Faker::Ancient.unique.god)

  PRODUCTS_PER_CATEGORY.times do
    product = category.products.create(
      name:  Faker::Ancient.primordial,
      set:   Faker::Ancient.titan,
      color: Faker::Color.hex_color,
      price: rand(1..15)
    )
  end
end

puts "Created #{Category.count} Categories."
puts "Created #{Product.count} Products."
