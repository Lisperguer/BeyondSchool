class CreateAutos < ActiveRecord::Migration[6.1]
  def change
    create_table :autos do |t|

      t.timestamps
    end
  end
end
