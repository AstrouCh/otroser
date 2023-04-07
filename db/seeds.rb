# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Serie.destroy_all

puts "Creating series..."
normal = {name: "Normal", description: "What is normal?"}
salvajesylibre = {name: "SALVAJES Y LIBRE", description: "grrr"}

[normal, salvajesylibre].each do |attributes|
  serie = Serie.create!(attributes)
  puts "Created #{serie.name}"
end
puts "Finished!"

puts "Cleaning database..."
Photo.destroy_all

puts "Creating photos..."
first = {url: "https://static.wixstatic.com/media/e859b4_4f4c9d6ec72a4d7a815980134d3fd22b~mv2.jpg/v1/fill/w_847,h_683,al_c,q_85,enc_auto/DSC_6446%20copia.jpg", alt: "first_photo", serie: Serie.first}
second = {url: "https://static.wixstatic.com/media/e859b4_e021bd44d4cb40a796d4ca80975fd0a3~mv2.jpg/v1/fill/w_1611,h_1070,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e859b4_e021bd44d4cb40a796d4ca80975fd0a3~mv2.jpg", alt: "second_photo", serie: Serie.first}

[first, second].each do |attributes|
  photo = Photo.create!(attributes)
  puts "Created #{photo.alt}"
end
puts "Finished!"
