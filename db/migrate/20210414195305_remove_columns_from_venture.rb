class RemoveColumnsFromVenture < ActiveRecord::Migration[6.1]
  def change
    remove_column :ventures, :team_id, :integer
    remove_column :ventures, :competitor_id, :integer
    remove_column :ventures, :investment_id, :integer
  end
end
