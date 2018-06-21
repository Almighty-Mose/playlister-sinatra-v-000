class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    name.gsub(" ", "-").downcase
  end

  def find_by_slug

  end
end
