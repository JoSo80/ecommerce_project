NUMBER_OF_CATEGORIES = 4
PRODUCTS_PER_CATEGORY = 25

Product.delete_all
Category.delete_all
Page.delete_all

Page.create(
  title:     "About Us",
  content:   "This website contains our MTG card collection",
  permalink: "about_us"
)

Page.create(
  title:     "Contact Us",
  content:   "If you want contact us please email themagicexchange@gmail.com",
  permalink: "contact_us"
)

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

# if Rails.env.development?
#  AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
# end
