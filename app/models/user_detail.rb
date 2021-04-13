class UserDetail < ApplicationRecord
    validates :user_id, presence: true
end
