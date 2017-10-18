# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(name: "Nguyen Dinh Hung",email: "hungnd.k58@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
User.create(name: "Mail",email: "mail@gmail.com",password: 123456,password_confirmation: 123456,admin: false,confirmed_at: Time.now)

Store.destroy_all
Store.create(name: "Google Play")
Store.create(name: "App Store")
Store.create(name: "Microsoft Store")
Store.create(name: "BlackBerry App Word")
Store.create(name: "Steam")
Store.create(name: "Origin")
Store.create(name: "Humble Bundle Store")
Store.create(name: "PlayStation Store")
Store.create(name: "Nintendo Game Store")
Store.create(name: "Xbox Game Store")
Store.create(name: "Amazon AppStore")
Store.create(name: "Appvn")

Maker.destroy_all
Maker.create(name: "Facebook")
Maker.create(name: "Zalo Group")
Maker.create(name: "Supercell")
Maker.create(name: "Google LLC")
Maker.create(name: "Microsoft Corporation")
Maker.create(name: "Rovio")
Maker.create(name: "Electronic Arts ")
Maker.create(name: "Rockstar Games")
Maker.create(name: "Gameloft")
Maker.create(name: "Outfit7")
Maker.create(name: "Halfbrick Studios")
Maker.create(name: "Blizzard Entertainment Inc")
Maker.create(name: "Square Enix")
