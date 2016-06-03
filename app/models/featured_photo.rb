class FeaturedPhoto < ActiveRecord::Base
  belongs_to :sport
  belongs_to :athlete
end
