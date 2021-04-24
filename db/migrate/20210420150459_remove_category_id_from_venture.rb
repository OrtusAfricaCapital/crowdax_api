class RemoveCategoryIdFromVenture < ActiveRecord::Migration[6.1]
  def change
    remove_column :ventures, :category_id, :integer
  end
end
