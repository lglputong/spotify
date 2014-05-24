class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :name
      t.text :description
      t.integer :song_count

      t.timestamps
    end
  end
end
