class CreateFeaturedPhotos < ActiveRecord::Migration
  def change
    create_table :featured_photos do |t|
      t.belongs_to :athlete, index: true
      t.belongs_to :sport, index: true
      t.string :image_url, null: false
      t.boolean :display_status, default: true

      t.timestamps null: false
    end
  end
end
