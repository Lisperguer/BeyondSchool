require "open-uri"
require "date"

Car.destroy_all

User.destroy_all

Booking.destroy_all

feli = User.create(email: "felipe.lisperguer@gmail.com", password: "123456", password_confirmation: "123456")
flor = User.create(email: "flo.lema@gmail.com", password: "123456", password_confirmation: "123456")

car_uno = Car.create!(modelo: "chevrolet", anio: "2014", precio: 2000, ubicacion: "Chile", detalles: "muy bonito", capacidad: 4, user: flor)

url = "https://www.pngall.com/wp-content/uploads/11/Tuning-Car-PNG-Photo.png"
car_uno.photo.attach(io: URI.open(url), filename: "carsample.png", content_type: "image/jpeg")
car_uno.save
Booking.create(fecha_inicio: Date.new(2022, 7, 22), fecha_fin: Date.new(2022, 8, 22), car: car_uno, user: feli)
