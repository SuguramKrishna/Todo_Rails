# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todos = TodoModel.create([
    {task: "Buy Shoes", description: "Check the price of shoes in Ajio and Amazon.", date:  DateTime.now, status: true},
  
    {task: "Family Time", description: "Spend time with family.", date:  DateTime.now, status: false},
  
    {task: "Watch a movie", description: "Watch Adade Sundara movie with family.", date:  DateTime.now, status: true}
  
     ])