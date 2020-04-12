class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :role_id
      t.references :user
      t.timestamps
    end
  end
end
