class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :nickname
      t.string :license_plate_number
      t.float :longitude
      t.float :latitude
      t.references :user

      t.timestamps null: false
    end
  end
end
