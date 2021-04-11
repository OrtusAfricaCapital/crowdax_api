require 'rails_helper'

RSpec.describe User, type: :model do
 context "#Validation Tests" do
  subject {
    User.new(firstname: "Jjingo", lastname: "Kisakye", email: "sseguku@gmail.com", password_digest: "asasas", account_type: "investor", profile_photo: "http://free_image.com", verified: "NOT_VERIFIED")
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
    expect(subject).to eq(false) 
  end

  it "is not valid without account_type" do
    subject.account_type = nil
    expect(subject).to_not be_valid  
  end
  
  it "is not valid without verified" do 
    subject.verified = nil
    expect(subject).to_not be_valid  
  end

 end 
    
end
