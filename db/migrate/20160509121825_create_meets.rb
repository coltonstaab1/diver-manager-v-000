class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :description
      t.date :date
      t.integer :pool_id

      t.timestamps null: false
    end
  end
end
