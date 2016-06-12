class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :task_id
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
