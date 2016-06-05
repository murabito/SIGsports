class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :title
      t.text :quote

      t.timestamps null: false
    end
  end
end
