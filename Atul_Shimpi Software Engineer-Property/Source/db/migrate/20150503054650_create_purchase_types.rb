class CreatePurchaseTypes < ActiveRecord::Migration
  def change
    create_table :purchase_types do |t|
      t.string :name,:limit => 20, null: false
      t.timestamps null: false
    end
  end
end
