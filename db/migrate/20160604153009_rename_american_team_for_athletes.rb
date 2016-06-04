class RenameAmericanTeamForAthletes < ActiveRecord::Migration
  def change
    rename_column :athletes, :american_team, :american_team_url
  end
end
