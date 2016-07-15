class AddDescriptionToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :description, :text
  end
end
