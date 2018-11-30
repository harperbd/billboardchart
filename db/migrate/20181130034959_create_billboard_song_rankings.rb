class CreateBillboardSongRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :billboard_song_rankings do |t|
      t.integer :ranking
      t.belongs_to :song, foreign_key: true
      t.belongs_to :billboard, foreign_key: true

      t.timestamps
    end
  end
end
