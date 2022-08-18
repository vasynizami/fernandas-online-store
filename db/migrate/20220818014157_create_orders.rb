class CreateOrders < ActiveRecord::Migration[7.0]
  def change
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
  end
end
