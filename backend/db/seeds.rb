# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
Book.destroy_all

stormlight = Book.create(title: 'Way of Kings, The')
reckoners = Book.create(title: 'Steelheart')
dresden = Book.create(title: 'Storm Front')

Character.create(name: "Shalan", book: stormlight)
Character.create(name: "David", book: reckoners)
Character.create(name: "Harry", book: dresden)
Character.create(name: "Kaladin", book: stormlight)
Character.create(name: "Megan", book: reckoners)
Character.create(name: "Murphy", book: dresden)
Character.create(name: "Dalanar", book: stormlight)
Character.create(name: "Prof", book: reckoners)
Character.create(name: "Susan", book: dresden)