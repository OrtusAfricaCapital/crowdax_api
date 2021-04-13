require 'rails_helper'

RSpec.describe User, type: :model do
 context "#Validation Tests" do
  subject {
    User.new(firstname: "Jjingo", 
      lastname: "Kisakye", 
      email: "sseguku@gmail.com",
      password_digest: "asasas",
      account_type: "investor", 
      profile_photo: "http://free_image.com", 
      verified: "false")
  }
  
  it "is valid with valid attributes" do 
    expect(subject).to be_valid  
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end

  it "is not valid without password" do
    subject.password = nil
    expect(subject).to_not be_valid 
  end

  it "is not valid without account_type" do
    subject.account_type = nil
    expect(subject).to_not be_valid  
  end
  

 end 

#  context 'scope tests' 
 
#   let!(:params){{firstname:'legesi', lastname:'kenneth', email: 'klegesi@ortusafrica.com' , password_digest: 'jkljkljkl', account_type: 'investor', profile_photo: 'https:photos.com-1', verified: false }}
  
#   before(:each) do
#     User.new(params).save
#     User.new(params).save
#     User.new(params.merge(verified: false)).save
#     User.new(params.merge(verified: true)).save
#     User.new(params.merge(verified: true)).save
#   end

#   it 'should return verified users' do 
#     expect(User.verified_users.size).to eq(2)
#   end

#   it 'should return not_verified user' do 
#     expect(User.unverified_users.size).to eq(3)
#   end
  
#  end
    
end
