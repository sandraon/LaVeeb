# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'demo@demo.ee', password: 'demodemo')

Homepage.create(orgname: 'Asutuse nimi').save(validate:false)

menus = Menu.create([{ weekday: 'Esmaspäev'}, { weekday: 'Teisipäev'}, { weekday: 'Kolmapäev'}, { weekday: 'Neljapäev'}, { weekday: 'Reede'},])