# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Owner.create!(name: "Catherine", username: "cbatsoula", password:"123", location: "somewhere")
Plant.create!(plant_name: "tomato plant", acquired:"03/01/2020", indoor: true, outdoor: false, repot:"TBD", owner_id: 1)
