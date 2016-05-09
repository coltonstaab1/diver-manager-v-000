class CreateCompetitionDives < ActiveRecord::Migration
  def change
    create_table :competition_dives do |t|
      t.decimal :score_1
      t.decimal :score_2
      t.decimal :score_3
      t.integer :dive_id
      t.integer :user_id
      t.integer :meet_id

      t.timestamps null: false
    end
  end
end
