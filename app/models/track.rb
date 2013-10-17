class Track < ActiveRecord::Base
  belongs_to :album
  has_many :ratings

  validates_presence_of :name
end
