class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :topid_id
      t.integer :user_id
      t.integer :created_at

      t.timestamps
    end
  end
end
