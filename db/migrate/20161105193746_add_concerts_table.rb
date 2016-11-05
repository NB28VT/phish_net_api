class AddConcertsTable < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :venue, null: false
      t.string :month, null: false
      t.string :date, null: false
      t.string :year, null: false

      t.timestamps
    end    

  end
end
