class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.belongs_to :athlete, index: true
      t.belongs_to :sport, index: true
      t.string :headline, null: false
      t.date :date_posted
      t.string :url

      t.timestamps null: false
    end
  end
end
