class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :artist
      t.belongs_to :billboard

      t.timestamps
    end
  end
end
