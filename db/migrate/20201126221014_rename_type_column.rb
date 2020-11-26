class RenameTypeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :type, :string
    add_column :products, :set, :string
  end
end
