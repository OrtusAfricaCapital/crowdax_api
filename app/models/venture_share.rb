class VentureShare < ApplicationRecord
    validates :venture_id, presence: true
    validates :unit_share_value, presence: true
    validates :overall_shares, presence: true

    #associations
    belongs_to :venture
end
