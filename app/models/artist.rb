class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    slug_name = @artist.name.gsub("", "-")
  end
end
