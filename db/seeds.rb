# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Customer starter data.
Customer.create!({"name" => "Jack Black", "phone" => "2042942035", "email" => "", "notes" => "first"})
Customer.create!({"name" => "Matt Black", "phone" => "4310543259", "email" => "", "notes" => "disc 10%"})
Customer.create!({"name" => "Frank Doe", "phone" => "2049523507", "email" => "fdoe@example.com", "notes" => "Lives in Alberta"})
Customer.create!({"name" => "Mary Doe", "phone" => "4310520546", "email" => "", "notes" => ""})
Customer.create!({"name" => "Jhon Jhonson", "phone" => "2059856520", "email" => "jhonj@example.com", "notes" => ""})
