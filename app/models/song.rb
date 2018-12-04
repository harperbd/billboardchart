class Song < ApplicationRecord
  belongs_to :artist
  has_many :billboard_song_rankings
  has_many :billboards, through: :billboard_song_rankings
end
