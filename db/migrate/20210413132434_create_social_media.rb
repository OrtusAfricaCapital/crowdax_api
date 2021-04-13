class CreateSocialMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :social_media do |t|
      t.integer :venture_id
      t.integer :user_id
      t.string :linkedin
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :youtube

      t.timestamps
    end
  end
end
