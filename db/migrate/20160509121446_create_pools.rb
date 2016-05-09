class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
