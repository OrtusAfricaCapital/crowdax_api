class AddCategoryIdToVenture < ActiveRecord::Migration[6.1]
  def change
    add_column :ventures, :category_id, :integer
  end
end
