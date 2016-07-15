class Sport < ActiveRecord::Base
  has_many :athletes, dependent: :destroy
  has_many :featured_photos, dependent: :destroy
  has_many :news_articles, dependent: :destroy

  def womens_basketball?
    return true if self.type_id == 0
  end

  def mens_basketball?
    return true if self.type_id == 1
  end

  def football?
    return true if self.type_id == 2
  end
end
