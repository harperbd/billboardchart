class Song < ApplicationRecord
  belongs_to :artist
  has_many :billboard_song_rankings, dependent: :destroy
  has_many :billboards, through: :billboard_song_rankings
end
