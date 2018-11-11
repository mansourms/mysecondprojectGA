# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all

toyota = Company.create(name: "Toyota", country: "Japan")
nissan = Company.create(name: "Nissan", country: "Japan")

Car.destroy_all

camray = Car.create(name: "Camray", year: 2007, color: "White", style: "sedan", company_id: toyota.id)
avalon = Car.create(name: "Avalon", year: 2010, color: "Black", style: "sedan", company_id: toyota.id)
altima = Car.create(name: "Altima", year: 2017, color: "Blue", style: "sedan", company_id: nissan.id)

Image.destroy_all
camray_img = Image.create(url: "", car_id: camray.id)
avalon_img = Image.create(url: "", car_id: avalon.id)
altima_img = Image.create(url: "", car_id: altima.id)
