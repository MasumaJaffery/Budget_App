class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
          t.string :title
          t.string :icon
          t.references :user, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
