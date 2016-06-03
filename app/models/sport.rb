class Sport < ActiveRecord::Base
  has_many :athletes, dependent: :destroy
  has_many :featured_photos, dependent: :destroy
  has_many :news_articles, dependent: :destroy
  has_many :team_members
end
