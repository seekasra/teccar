class CreateDevices < ActiveRecord::Migration
  
  def change
    create_table :devices do |t|
      t.string :email
      t.string :phone
      t.string :did, null: false
      t.string :regid
      t.string :uid
      t.timestamp :validated_at
      t.timestamp :blocked_at

      t.timestamps
    end
  end

end
