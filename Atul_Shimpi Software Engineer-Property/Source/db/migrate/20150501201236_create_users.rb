class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :limit => 30, :null => false
      t.string :email_id, :limit => 25, :null => false
      t.string :encrypted_password, :limit => 100, :null => false
      t.string :salt, :limit => 100, :null => false
      t.integer :role_id, :null => false
      t.timestamps null: false
    end
  end
end
