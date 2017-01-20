class AddNflStatusToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :nfl_status, :string
  end
end
