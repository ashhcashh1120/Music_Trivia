class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :pop
      t.string :RandB
      t.string :alternative
      t.string :country
      t.string :rap
      t.string :rock

      t.timestamps
    end
  end
end
