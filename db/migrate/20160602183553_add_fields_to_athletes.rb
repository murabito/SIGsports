class AddFieldsToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :first_name, :string
    add_column :athletes, :last_name, :string
    add_column :athletes, :photo_url, :string
    add_column :athletes, :position, :string
    add_column :athletes, :american_team, :string
    add_column :athletes, :overseas_team, :string
    add_column :athletes, :college, :string
    add_column :athletes, :birthdate, :date
    add_column :athletes, :height, :string
    add_column :athletes, :weight, :string
    add_column :athletes, :website_url, :string
    add_column :athletes, :video_url, :string
  end
end
