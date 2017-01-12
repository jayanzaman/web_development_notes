class CreateAppjayans < ActiveRecord::Migration[5.0]
  def change
    create_table :appjayans do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
