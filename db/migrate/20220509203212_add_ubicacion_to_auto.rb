class AddUbicacionToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :ubicacion, :string
  end
end
