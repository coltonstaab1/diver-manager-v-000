class AddZipCodeToPools < ActiveRecord::Migration
  def change
    add_column :pools, :zip_code, :integer
  end
end
