class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :on_storage
      t.integer :on_shop

 	  t.integer :purchase_price
 	  t.integer :base_price
 	  t.integer :after_tax_price
 	  t.integer :wholesale_price
 	  t.integer :retail_price

      t.string :bag_code
      t.string :shop_code
      t.text :description
      t.string :colors
      t.string :sizes

 	  t.datetime :last_purchase_at

 	  t.boolean :deleted

      t.timestamps null: false
    end
  end
end
