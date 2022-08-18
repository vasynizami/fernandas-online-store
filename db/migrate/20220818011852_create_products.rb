class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :img_link
      t.integer :category_id

      t.timestamps
    end
    add_money :products, :price, currency: { present: true }
  end
end
