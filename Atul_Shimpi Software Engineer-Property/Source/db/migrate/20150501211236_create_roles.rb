class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :role_type, null: false
      t.string :name, :limit => 30, :null => false
      t.string :description, :limit => 50, :null => false
      t.timestamps null: false
    end
  end
end
