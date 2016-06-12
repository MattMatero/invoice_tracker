class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :invoice, index: true
      t.string :name
      t.decimal :price
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :tasks, :invoices
  end
end
