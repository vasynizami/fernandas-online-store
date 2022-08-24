class CreateProductsAndOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :img_link
      t.integer :category_id

      t.timestamps
    end
    add_money :products, :price, currency: { present: true }

  create_table :orders do |t|
    t.integer :user_id
    t.string :first_name
    t.string :last_name
    t.integer :address_id
    t.integer :status, default: 0
    t.string :token
    t.string :charge_id
    t.string :error_message

    t.timestamps
  end
  add_money :orders, :price, currency: { present: false }

    create_table :orders_products, id: false do |t|
      t.belongs_to :order
      t.belongs_to :product
    end
  end
end






