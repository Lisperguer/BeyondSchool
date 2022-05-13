require "open-uri"
require "date"

Car.destroy_all

User.destroy_all

Booking.destroy_all

feli = User.create(email: "felipe.lisperguer@gmail.com", password: "123456", password_confirmation: "123456")
flor = User.create(email: "flo.lema@gmail.com", password: "123456", password_confirmation: "123456")

car_uno = Car.create!(modelo: "chevrolet", anio: "2014", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)
car_2 = Car.create!(modelo: "chevrolet", anio: "2014", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: feli)
car_3 = Car.create!(modelo: "chevrolet", anio: "2016", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)
car_4 = Car.create!(modelo: "toyota", anio: "2018", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: feli)
car_5 = Car.create!(modelo: "toyota", anio: "2014", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)
car_6 = Car.create!(modelo: "toyota", anio: "2020", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: feli)
car_7 = Car.create!(modelo: "Volkswagen", anio: "2016", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)
car_8 = Car.create!(modelo: "Volkswagen", anio: "2018", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: feli)
car_9 = Car.create!(modelo: "Renault", anio: "2020", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)
car_10 = Car.create!(modelo: "Renault", anio: "2018", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: feli)
car_11 = Car.create!(modelo: "Ford", anio: "2018", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)
car_12 = Car.create!(modelo: "Ford", anio: "2018", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: feli)


url = "https://www.pngall.com/wp-content/uploads/11/Tuning-Car-PNG-Photo.png"
car_uno.photo.attach(io: URI.open(url), filename: "carsample.png", content_type: "image/jpeg")
car_uno.save
Booking.create(fecha_inicio: Date.new(2022, 7, 22), fecha_fin: Date.new(2022, 8, 22), car: car_uno, user: feli)
