class Category < ApplicationRecord
    validates :name, presence: true

    #associations
    has_many :ventures
end
