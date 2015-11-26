class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.integer :property_type_id
      t.integer :purchase_type_id
      t.integer :area, null: false
      t.integer :price, null: false
      t.timestamps null: false
    end
  end
end
