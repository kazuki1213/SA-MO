class CreateBodyTemperatures < ActiveRecord::Migration[6.0]
  def change
    create_table :body_temperatures do |t|
      t.references :user
      t.float :body_temperature
      t.text :comment
      t.timestamps
    end
  end
end
