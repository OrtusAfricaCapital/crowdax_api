class Venture < ApplicationRecord

    validates :user_id, presence: true
    validates :name, presence: true
    validates :short_description, presence: true
    validates :sector, presence: true
    validates :investment_stage, presence: true
end
