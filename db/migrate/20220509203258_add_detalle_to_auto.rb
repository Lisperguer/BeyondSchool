class AddDetalleToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :detalle, :string
  end
end
