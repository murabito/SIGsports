class Athlete < ActiveRecord::Base
  belongs_to :sport
  has_many :news_articles, dependent: :destroy
end
