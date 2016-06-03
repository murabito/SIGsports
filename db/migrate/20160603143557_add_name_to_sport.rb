class AddNameToSport < ActiveRecord::Migration
  def change
    add_column :sports, :type, :integer, default: 0
    add_index  :sports, :type
  end
end
