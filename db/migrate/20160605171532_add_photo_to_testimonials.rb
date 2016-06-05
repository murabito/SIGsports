class AddPhotoToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :photo_url, :string
  end
end
