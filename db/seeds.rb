# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todos = [[id:1, title:'英語', about:'キクタン英単語'],[id:2, title:'プログラミング', about:'ReactとRailsのマイクロアプリケーション化']]

todos.each do |todo|
    Todo.create(todo)
end