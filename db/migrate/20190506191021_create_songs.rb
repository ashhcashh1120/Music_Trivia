class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :videoPath
      t.string :audioPath
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
