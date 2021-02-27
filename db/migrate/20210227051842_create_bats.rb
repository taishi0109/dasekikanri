class CreateBats < ActiveRecord::Migration[6.0]
  def change
    create_table :bats do |t|
      t.integer :match_id
      t.integer :result
      t.references :game, foreign_key: true, null: false
      t.timestamps
    end
  end
end
