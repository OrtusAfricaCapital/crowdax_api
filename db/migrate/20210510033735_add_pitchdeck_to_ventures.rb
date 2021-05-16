class AddPitchdeckToVentures < ActiveRecord::Migration[6.1]
  def change
    add_column :ventures, :pitchdeck, :string
  end
end
