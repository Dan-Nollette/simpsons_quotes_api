# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    20.times do |i|
      quote = Quote.create!(
        character: Faker::Simpsons.character,
        content: Faker::ChuckNorris.fact,
        episode_of_season: rand(30),
        season_number: (rand(25) +1)
      )
      puts "Quote #{i}: Character is #{quote.character} and quotation is '#{quote.content}'."
    end
  end
end

Seed.begin
