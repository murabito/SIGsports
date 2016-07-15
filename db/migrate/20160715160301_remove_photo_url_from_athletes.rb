class RemovePhotoUrlFromAthletes < ActiveRecord::Migration
  def change
    remove_column :athletes, :photo_url
  end
end
