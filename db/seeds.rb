# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = [[id:1, name:'英語'],[id:2, name:'プログラミング']]

genres.each do |genre|
    Genre.create(genre)
end

todos = [[id:1, about:'キクタン英単語', genre_id:1],[id:2, about:'ReactとRailsのマイクロアプリケーション化', genre_id:2]]

todos.each do |todo|
    Todo.create(todo)
end