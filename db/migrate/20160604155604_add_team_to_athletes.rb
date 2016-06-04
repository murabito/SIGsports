class AddTeamToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :american_team_name, :string
  end
end
