Cocktail.destroy_all

puts "create 15 fakes Cocktail"
15.times do
  cocktail = Cocktail.new({
    name: Faker::Superhero.name,
    }
  )
  cocktail.save!
end
