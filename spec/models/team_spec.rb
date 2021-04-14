require 'rails_helper'

RSpec.describe Team, type: :model do
 context "#Validation Tests" do

  subject{
    Team.new(
      venture_id: 2, 
      name: "Jjingo Kisakye",
      role: "CEO",
      gender: "Male",
      bio: "Developer/Founder/Owner"
    )
  }

  it "valid with correct attributes" do
    expect(subject).to be_valid  
  end
  
  it "not valid without venture_id" do
    subject.venture_id = nil 
    expect(subject).to_not be_valid 
  end

  it "not valid without name" do
    subject.name = nil 
    expect(subject).to_not be_valid  
  end

  it "not valid without role" do
    subject.role = nil 
    expect(subject).to_not be_valid  
  end
 end

 context "a context" do
  it { should belong_to :venture } 
   
 end
 
 
end
