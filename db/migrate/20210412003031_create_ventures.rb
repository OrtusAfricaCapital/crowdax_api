class CreateVentures < ActiveRecord::Migration[6.1]
  def change
    create_table :ventures do |t|
      t.integer :user_id
      t.string :name
      t.string :short_description
      t.string :logo
      t.string :sector
      t.string :investment_stage
      t.integer :total_investors
      t.decimal :amount_invested
      t.date :initial_investing_date
      t.date :last_investing_date
      t.decimal :minimum_investment_amount
      t.integer :team_id
      t.integer :competitor_id
      t.integer :investment_id
      t.string :approval_status
      t.date :approved_date
      t.string :activation_status

      t.timestamps
    end
  end
end
