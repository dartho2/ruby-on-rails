class AddDeletedToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :deleted, :boolean, default: false
  end
end
