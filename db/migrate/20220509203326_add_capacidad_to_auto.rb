class AddCapacidadToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :capacidad, :integer
  end
end
