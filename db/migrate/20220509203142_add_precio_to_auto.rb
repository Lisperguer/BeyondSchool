class AddPrecioToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :Precio, :integer
  end
end
