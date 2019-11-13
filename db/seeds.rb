# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Restaurant database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dar el Siam',
    address:      'Longue Chaussée, Luigne',
    category:     'chinese',
    phone_number: '1147477474'
  },
  {
    name:         'Giovani Pizza',
    address:      'Grand Place, Lille',
    category:     'italian',
    phone_number: '2147477474'
  },
  {
    name:         'Sakura',
    address:      'Xpo drive, Kortrijk',
    category:     'japanese',
    phone_number: '3147477474'
  },
  {
    name:         'Le Nano',
    address:      '7 Boundary St, London E2 7JE',
    category:     'french',
    phone_number: '4147477474'
  },
  {
    name:         'Friet Boetik',
    address:      'Moescronsteenweg, Aalbeke',
    category:     'belgian',
    phone_number: '5147477474'
  }
]
Restaurant.create!(restaurants_attributes)

puts 'Cleaning Restaurant database...'

puts 'Finished!'
