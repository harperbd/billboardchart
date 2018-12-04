# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
billboard = Billboard.create(name: 'Top 100')

5.times do |i|
  artist = Artist.create(name: "artist_#{i}", genre: "genre_#{i}")

  2.times do |j|
    song = Song.create(title: "title_#{i}_#{j}", artist_id: artist.id)
    # todo: randomly add songs to billboards with ranking???
  end

end

# BillboardSongRanking.create(ranking: 1, billboard_id: 1, song_id: 1)
# BillboardSongRanking.create(ranking: 2, billboard_id: 1, song_id: 3)
# BillboardSongRanking.create(ranking: 3, billboard_id: 1, song_id: 8)
# BillboardSongRanking.create(ranking: 4, billboard_id: 1, song_id: 9)