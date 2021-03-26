require 'rails_helper'

RSpec.describe User, type: :model do
  context "#validation tests" do
    it "ensure first name presence" do 
      user = User.new(last_name: 'Last', email: 's@example.com', password: 'xxxxxxxx').save
      expect(user).to eq(false)  
    end

    it "ensures last name presence" do 
      user = User.new(first_name: 'Kisakye', email: 's@ortusafrica.com', password: 'xxxxxxxx',password_confirmation: 'ddddd').save
      expect(user).to eq(false)
    end

    it "ensures email presence" do
      user = User.new(first_name: 'Jjingo', last_name: 'Kisakye', password: 'xxxxxxxx', password_confirmation: 'ddddd').save
      expect(user).to eq(false)  
    end

    it "ensures password presence" do 
     user = User.new(first_name: 'Jjingo', last_name: 'Kisakye', email: 'xxxxxxxx@ortusafrica.com', password_confirmation: 'ddddd').save
     expect(user).to eq(false)  
    end

    it "ensures password_confirmation presence" do 
      user = User.new(first_name: 'Jjingo', last_name: 'Kisakye', email: 'xxxxxxxx@ortusafrica.com',  password: 'ddddd').save
      expect(user).to eq(false)  
     end
 
    it 'should save successfully' do
      user = User.new(first_name: 'Jjingo', last_name: 'Kisakye', email: 'xxxxxxxx@ortusafrica.com', password: 'ddddd' , password_confirmation: 'ddddd').save
      expect(user).to eq(true)
    end

    it 'should have unique email' do
      user = User.new(first_name: 'Jjingo', last_name: 'Kisakye', email: 'xxxxxxxx@ortusafrica.com', password: 'ddddd' , password_confirmation: 'ddddd').save
      user = User.new(first_name: 'Jjingod', last_name: 'Kisakyed', email: 'xxxxxxxx@ortusafrica.com', password: 'ddddd' , password_confirmation: 'ddddd').save
      
      expect(user).to eq(false)
    end
   end
=begin 
   context "More Validations" do    
    before(:each) do
      User.create(first_name: 'Jjingo',
        last_name: 'Kisakye',
        email: 'xxxxxxxx@ortusafrica.com', 
        password: 'ddddd' ,
        password_confirmation: 'ddddd')
    end
    it {should validates_presence_of(:first_name)}
    it {should validates_presence_of(:last_name)}
    it {should validates_presence_of(:email)}
    it {should validates_presence_of(:password_digest)}
    it {should validates_uniqueness_of(:email)}
   end 
=end
end
