class ChangeTableName < ActiveRecord::Migration
  def change
  	rename_table :stats, :cars
  end
end
