class AddModeloToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :modelo, :string
  end
end
