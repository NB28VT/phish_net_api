class AddConcertSongsTable < ActiveRecord::Migration
  def change
    create_table :concert_songs do |t|
      t.integer :song_id, null: false
      t.integer :concert_id, null: false
    
      t.timestamps
    end    

  end
end
