# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "felipe.lisperguer@gmail.com", password: "123456", password_confirmation: "123456")
Car.create(modelo: "chevrolet", anio: "2014", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user_id: 1)

User.create(email: "flo.lema@gmail.com", password: "123456", password_confirmation: "123456")
Booking.create(fecha_inicio: "20/05/2022", fecha_fin: "20/08/2022", car_id: 1, user_id: 1)

