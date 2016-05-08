class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.string :description
      t.decimal :degree_of_difficulty

      t.timestamps null: false
    end
  end
end
