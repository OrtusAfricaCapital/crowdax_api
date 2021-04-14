class UserDetail < ApplicationRecord
    #validatons
    validates :user_id, presence: true
    #validates_presence_of :user

    #associations
    belongs_to :user 

end
