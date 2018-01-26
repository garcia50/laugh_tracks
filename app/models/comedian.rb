class Comedian < ActiveRecord::Base
  has_many :specials

  def self.average_age
    Comedian.average(:age).floor
  end

end
