class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :fecha_inicio
      t.date :fecha_fin

      t.timestamps
    end
  end
end
