class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.references :invoice, index: true
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
    add_foreign_key :clients, :invoices
  end
end
