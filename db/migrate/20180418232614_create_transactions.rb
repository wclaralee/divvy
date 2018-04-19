class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :description
      t.decimal :amount
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
