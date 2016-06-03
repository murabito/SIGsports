class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :photo_url
      t.string :email
      t.string :twitter_url
      t.string :facebook_url
      t.text :description

      t.timestamps null: false
    end
  end
end
