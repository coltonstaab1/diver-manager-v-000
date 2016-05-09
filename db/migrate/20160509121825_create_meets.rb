class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.date :date
      t.integer :pool_id

      t.timestamps null: false
    end
  end
end
