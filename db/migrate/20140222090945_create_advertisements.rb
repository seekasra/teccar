class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.integer :make_id, null: false
      t.integer :model_id, null: false
      t.integer :price
      t.string :location
      t.integer :year
      t.text :description
      t.integer :reported_count, null: false, default: 0
      t.boolean :is_approved, null: false, default: false
      t.integer :type
      t.integer :comments_count, null: false, default: 0

      t.timestamps
    end
  end
end
