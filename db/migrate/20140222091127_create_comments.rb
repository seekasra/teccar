class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :reported_count, null: 0, default: 0
      t.boolean :is_viewed, null: 0, default: 0

      t.timestamps
    end
  end
end
