class AddNameToSport < ActiveRecord::Migration
  def change
    add_column :sports, :type_id, :integer
    add_index :sports, :type_id
  end
end
