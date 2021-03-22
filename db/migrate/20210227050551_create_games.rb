class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.references :user, foreign_key: true, null: false
      t.timestamps
      t.date :game_date
    end
  end
end
