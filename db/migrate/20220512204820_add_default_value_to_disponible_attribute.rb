class AddDefaultValueToDisponibleAttribute < ActiveRecord::Migration[6.1]
  def change
    change_column :cars, :disponible, :boolean, default: true
  end
end
