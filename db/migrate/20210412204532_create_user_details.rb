class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.string :phonenumber
      t.text :bio
      t.date :date_of_birth
      t.string :country
      t.string :address
      t.integer :social_media_id
      t.string :cover_photo
      t.string :profile_photo
      t.string :website
      t.decimal :total_amount_invested
      t.integer :companies_invested_in
      t.decimal :annual_investment_limit

      t.timestamps
    end
  end
end
