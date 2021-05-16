class AddTractionLocationReferredToVentures < ActiveRecord::Migration[6.1]
  def change
    add_column :ventures, :traction, :text
    add_column :ventures, :location, :string
    add_column :ventures, :referred_by, :string
  end
end
