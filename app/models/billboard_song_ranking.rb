class BillboardSongRanking < ApplicationRecord
  belongs_to :song
  belongs_to :billboard
end
