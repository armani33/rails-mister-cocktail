require 'json'
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all

puts 'create 15 fakes Cocktail'
15.times do
  cocktail = Cocktail.new(name: Faker::Superhero.name)
  cocktail.save!
end

puts 'create ingredients objects'

json_ingredients = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients_hash = JSON.parse(json_ingredients)['drinks']

ingredients_hash.each do |hash|
  ingredient = Ingredient.new(name: hash['strIngredient1'])
  ingredient.save!
end
