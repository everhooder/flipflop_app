class CreateDrunkards < ActiveRecord::Migration
  def change
    create_table :drunkards do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
