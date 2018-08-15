class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :meeting_id
      t.string :username, null: false
      t.string :password_digest, null: false


      t.timestamps
    end
  end
end
