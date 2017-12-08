class AddDeletedToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :deleted, :boolean, default: false
  end
end
