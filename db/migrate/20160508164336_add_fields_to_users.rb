class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :team_id, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
  end
end
