class AddAvailableToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :is_available, :boolean, default: true
  end
end
