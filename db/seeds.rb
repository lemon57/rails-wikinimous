# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Started seed"
puts "Emptying DB!"

Article.destroy_all

# status = %w(true false)
# status = [true, false]
10.times do
  articles = Article.new(title: Faker::Simpsons.character, content: Faker::Simpsons.quote)

  puts "#{articles.title} saved!" if articles.save
end

puts "Seeding finished!"
