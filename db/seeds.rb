# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#CREATE
Game.create(name: 'Rune Factory 4 Special', genre: 'Role-playing (RGP)', price: 5999, release_date: '2019-07-25')

game = Game.new(name: 'Borderlands 3', genre: 'Simulator', price: 5999, release_date: '2019-09-13')
game.save

sample_games = [ {:name=>"Zombie Driver: Immortal Edition", :genre=>"Racing", :price=>5999, :release_date=>"2019-Jul-25"},
                {:name=>"Remnant: From the Ashes", :genre=>"Shooter", :price=>6999, :release_date=>"2019-Aug-20"},
                {:name=>"Monster Hunter: World - Iceborne", :genre=>"Adventure", :price=>6999, :release_date=>"2019-Sep-06"},
                {:name=>"Cyberpunk 2077", :genre=>"Role-playing (RPG)", :price=>4999, :release_date=>"2020-Sep-17"},
                {:name=>"Pokémon Shield", :genre=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Nov-15"},
                {:name=>"Children of Morta", :genre=>"Role-playing (RPG)", :price=>6999, :release_date=>"2019-Sep-03"} ]

sample_games.each do |g|
  Game.create(name: g[:name], genre: g[:genre], price: g[:price], release_date: g[:release_date])
end

# READ

games = Game.all

game_4 = Game.find(4)

aug_game = Game.where(release_date: '2019-Aug-20')

first_game = Game.first
last_game = Game.last

games_sorted = Game.order(release_date: :asc)

games_59b = Game.where(price: 5999)

games_2019 = Game.where('extract(year from release_date) = ?', 2019)

# UPDATE
# Idk why this doesn't work
# borderlands = Game.find_by(name: 'Borderlands 3')
borderlands = Game.where(name: 'Borderlands 3')
borderlands.update(genre: 'Shooter')

pokemon = Game.where(name: 'Pokémon Shield')
pokemon.update(price: 3999)

rpg_games = Game.where(genre: 'Role-playing (RPG)')
rpg_games.update_all(price: 2999)