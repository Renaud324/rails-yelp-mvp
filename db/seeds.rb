# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

5.times do
  bristol = Restaurant.new(name: "Epicure", category: "french", address: "75008 Paris")
  bristol.save                # Insert into DB and set id
  yummy = Review.new(content: "yummy yummy", rating: 4, restaurant: bristol)
  # yummy.restaurant = bristol  # Set foreign key restaurant_id
  yummy.save
end
