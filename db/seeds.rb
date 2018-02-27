# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |index|
  Article.create!(title: Faker::StarWars.quote,
                        content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Quo deleniti alias porro, iusto cupiditate, facere quod, tenetur consequuntur expedita,
                        qui dolorum temporibus obcaecati magnam delectus fugit necessitatibus assumenda ex recusandae.")
end

