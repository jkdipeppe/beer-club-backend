class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.integer :member_id
      t.integer :meeting_id
      t.string :brand
      t.string :name
      t.decimal :abv
      t.string :city
      t.string :state
      t.string :type
      t.string :meeting_month
      t.integer :year

      t.timestamps
    end
  end
end
