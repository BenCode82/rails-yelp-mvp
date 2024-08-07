# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "destroy all the restaurants"
Restaurant.destroy_all
puts "All restaurants destroyed"

puts "Creating restaurants"
Restaurant.create!(name: "Chez Fufu", address: "15 Rue des Alouettes", phone_number: "0610101010", category: "belgian")
Restaurant.create!(name: "Allons enfants", address: "Rue du Faubours", phone_number: "0612456598", category: "belgian")
Restaurant.create!(name: "Les allumettes", address: "Impasse de la lune", phone_number: "0678879865", category: "french")
Restaurant.create!(name: "Rince gosier", address: "Avenue Foch", phone_number: "0654632154", category: "italian")
Restaurant.create!(name: "21 Jump street", address: "Au rond point à droite", phone_number: "0689653245", category: "chinese")
puts "Restaurants created"

# ["chinese", "italian", "japanese", "french", "belgian"]
