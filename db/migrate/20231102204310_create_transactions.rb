class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.decimal :amount
      t.references :author, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
