class AddPoolIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :pool_id, :integer
  end
end
