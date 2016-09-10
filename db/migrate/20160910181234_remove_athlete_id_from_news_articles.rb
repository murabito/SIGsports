class RemoveAthleteIdFromNewsArticles < ActiveRecord::Migration
  def change
    remove_column :news_articles, :athlete_id
  end
end
