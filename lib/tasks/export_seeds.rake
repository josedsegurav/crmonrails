# lib/tasks/export_seeds.rake
namespace :db do
  desc "Export database to seeds format"
  task export_seeds: :environment do
    File.open("db/seeds_export.rb", "w") do |file|

      # Export customers
      Customer.all.each do |customer|
        file.write("Customer.create!(#{customer.attributes.except('id', 'created_at', 'updated_at').inspect})\n")
      end

    end

    puts "Seeds exported to db/seeds_export.rb"
  end
end