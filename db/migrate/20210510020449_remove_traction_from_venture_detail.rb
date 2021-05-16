class RemoveTractionFromVentureDetail < ActiveRecord::Migration[6.1]
  def change
    remove_column :venture_details, :traction, :string
  end
end
