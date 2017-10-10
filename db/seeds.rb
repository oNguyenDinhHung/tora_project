# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.destroy_all
Store.create(name: "MediaMart")
Store.create(name: "BigC")
Store.create(name: "Tikitaka")
Store.create(name: "Sendo")
Store.create(name: "Nguyen Kim")

Maker.destroy_all
Maker.create(name: "Toyota")
Maker.create(name: "Honda")
Maker.create(name: "Yamaha")
Maker.create(name: "Apple")
Maker.create(name: "Microsoft")
Maker.create(name: "Samsung")

