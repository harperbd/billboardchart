class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.artist :belongs_to
      t.billboard :belongs_to

      t.timestamps
    end
  end
end
