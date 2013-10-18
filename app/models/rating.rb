class Rating < ActiveRecord::Base
  belongs_to :track

  validates_numericality_of :score, only_integer: true
  validates_inclusion_of :score, in: 0..5
end
