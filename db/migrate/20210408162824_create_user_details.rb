class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.string :phonenumber
      t.string :bio
      t.string :sex
      t.date :date_of_birth
      t.string :country
      t.string :address
      t.integer :social_media_id

      t.timestamps
    end
  end
end
