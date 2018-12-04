class Billboard < ApplicationRecord
  has_many :billboard_song_rankings
  has_many :songs, through: :billboard_song_rankings
end
