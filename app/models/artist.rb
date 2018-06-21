class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    slug_name = Artist.name.gsub(" ", "-")
  end
end
