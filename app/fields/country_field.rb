require "administrate/field/base"

class CountryField < Administrate::Field::Base
  def to_s
    data
  end
end
