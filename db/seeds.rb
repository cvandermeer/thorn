# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([{name: 'Town', y_position: 10}, {name: 'Castle', y_position: 30}])
User.create(name: 'Legolas Leafborn',
            email: 'cvandermeer@live.nl', 
            password: '123qweasd',
            race: 'Elf')