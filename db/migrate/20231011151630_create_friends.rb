class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.integer :friend_id
      t.string :first_name
      t.string :last_name
      t.string :email ,null:false
      t.string :phone

      t.timestamps
    end
  end
end
