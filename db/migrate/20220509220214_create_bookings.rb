class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
