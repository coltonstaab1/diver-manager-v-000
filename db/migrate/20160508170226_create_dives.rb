class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.string :number_code
      t.string :description
      t.decimal :degree_of_difficulty

      t.timestamps null: false
    end
  end
end
