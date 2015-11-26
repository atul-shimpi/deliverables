class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1, :limit => 50
      t.string :address2, :limit => 50
      t.string :city, :limit => 30
      t.integer :pincode
      t.string :country, :limit => 30
      t.float :latitude
      t.float :longitude
      t.integer :property_id
      t.timestamps null: false
    end
  end
end