# NUMBER_OF_CATEGORIES = 4
# PRODUCTS_PER_CATEGORY = 25

# Product.delete_all
# Category.delete_all
Province.delete_all
User.delete_all

User.create(
  name: "Jose",
  address: "111 Pembridge Bay",
  email: "dknyjs@gmail.com"
)

Province.create(
  name: "Manitoba"
)



# NUMBER_OF_CATEGORIES.times do
#  category = Category.create(name: Faker::Ancient.unique.god)

#  PRODUCTS_PER_CATEGORY.times do
#    product = category.products.create(
#      name:  Faker::Ancient.primordial,
#      set:   Faker::Ancient.titan,
#      color: Faker::Color.color_name,
#      price: rand(1..15)
#    )
#    query = URI.encode_www_form_component([product.name, category.name].join(","))
#    downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
#    product.image.attach(io: downloaded_image, filename: "m-#{[product.name, category.name].join('-')}.jpg")
#  end
# end

# puts "Created #{Category.count} Categories."
# puts "Created #{Product.count} Products."

# if Rails.env.development?
#  AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
# end
