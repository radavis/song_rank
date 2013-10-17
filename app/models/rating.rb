class Rating < ActiveRecord::Base
  belongs_to :track

  validates_numericality_of :points, only_integer: true
  validates_inclusion_of :points, in: 0..5
end
