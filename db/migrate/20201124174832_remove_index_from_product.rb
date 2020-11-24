class RemoveIndexFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_index :products, :category_id
  end
end
