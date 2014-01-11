class Filetype < ActiveRecord::Base
  def self.allowed_types
    all.map { |f| f.name }
  end
end
