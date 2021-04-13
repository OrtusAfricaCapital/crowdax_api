class Team < ApplicationRecord
    validates :venture_id, presence: true
    validates :name, presence: true
    validates :role, presence: true
end
