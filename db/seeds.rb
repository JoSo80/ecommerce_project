NUMBER_OF_CATEGORIES = 5
PRODUCTS_PER_CATEGORY = 5

Product.delete_all
Category.delete_all

NUMBER_OF_CATEGORIES.times do
  category = Category.create(name: Faker::Ancient.unique.god)

  PRODUCTS_PER_CATEGORY.times do
    product = category.products.create(
      name:  Faker::Ancient.primordial,
      set:   Faker::Ancient.titan,
      color: Faker::Color.color_name,
      price: rand(1..15)
    )
  end
end

puts "Created #{Category.count} Categories."
puts "Created #{Product.count} Products."
