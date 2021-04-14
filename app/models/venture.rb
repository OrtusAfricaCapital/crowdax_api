class Venture < ApplicationRecord

    #validates
    validates :user_id, presence: true
    validates :name, presence: true
    validates :short_description, presence: true
    validates :sector, presence: true
    validates :investment_stage, presence: true

    #associations
    belongs_to :user 
    belongs_to :category
    has_one :venture_detail
    has_one :venture_share
    has_many :investments 
    has_many :competitors
    has_many :teams 
    
end
