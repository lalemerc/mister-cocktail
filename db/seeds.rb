# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  Cocktail.create(
    name:Faker::Name.name)
end

ingredients = Ingredient.create([{name: 'mint'}, {name: 'sugar'}, {name: 'rhum'}, {name: 'gin'}, {name: 'lemon'}, {name: 'tonic'}])

100.times do
  Dose.create(
    quantity:Faker::Number.number(2),
    ingredient:Ingredient.all.to_a.sample,
    cocktail:Cocktail.all.to_a.sample)
end
