class AddAnoToAuto < ActiveRecord::Migration[6.1]
  def change
    add_column :autos, :ano, :integer
  end
end
