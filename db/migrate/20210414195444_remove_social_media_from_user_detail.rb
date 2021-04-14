class RemoveSocialMediaFromUserDetail < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_details, :social_media_id, :integer
  end
end
