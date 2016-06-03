class Sport < ActiveRecord::Base
  has_many :athletes
  has_many :featured_photos
end
