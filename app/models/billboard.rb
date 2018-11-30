class Billboard < ApplicationRecord
  has_many :songs, :through => :billboard_song_rankings
end
