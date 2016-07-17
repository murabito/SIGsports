class Athlete < ActiveRecord::Base
  belongs_to :sport
  has_many :news_articles, dependent: :destroy

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  scope :available, -> { where(is_available: true) }
end
