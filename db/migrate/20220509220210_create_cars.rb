class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :modelo
      t.integer :anio
      t.integer :precio
      t.string :ubicacion
      t.string :detalles
      t.integer :capacidad

      t.timestamps
    end
  end
end
