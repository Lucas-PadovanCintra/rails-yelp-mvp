# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Rong He Liberdade", address: "R. da Glória, 622 - Liberdade, São Paulo - SP, 01510-001, Brasil", phone_number: "+55 11 91234-5678", category: "chinese")
puts "Created Rong He Liberdade"
Restaurant.create!(name: "Pizzaria Speranza", address: "R. Treze de Maio, 1004 - Bela Vista, São Paulo - SP, 01327-000, Brasil", phone_number: "+55 11 98765-4321", category: "italian")
puts "Created Pizzaria Speranza"
Restaurant.create!(name: "Nōsu", address: "R. Jacques Félix, 405 - Vila Nova Conceição, São Paulo - SP, 04509-000, Brasil", phone_number: "+55 11 99876-5432", category: "japanese")
puts "Created Nōsu"
Restaurant.create!(name: "Freddy", address: "R. Pedroso Alvarenga, 1170 - Itaim Bibi, São Paulo - SP, 04531-004, Brasil", phone_number: "+55 11 97654-3210", category: "french")
puts "Created Freddy"
Restaurant.create!(name: "Brasserie Belge", address: "Av. Brigadeiro Faria Lima, 1234 - Pinheiros, São Paulo - SP, 05426-200, Brasil", phone_number: "+55 11 93456-7890", category: "belgian")
puts "Created Brasserie Belge"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
