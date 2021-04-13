class User < ApplicationRecord
  
  has_secure_password

  #scope
 # scope :verified_users, -> { where(verified: true) }

  #scope :unverified_users, -> { where(verified: false) }

  #validations
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: { :minimum => 6 } #length not tested
  validates :account_type, presence: true 
  validates :verified, presence: true 
  
  #associations
  has_one :userdetail
end
