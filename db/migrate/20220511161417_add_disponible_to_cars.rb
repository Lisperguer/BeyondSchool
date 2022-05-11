class AddDisponibleToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :disponible, :boolean
  end
end
