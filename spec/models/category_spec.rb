require 'rails_helper'

RSpec.describe Category, type: :model do
  context "#Validation Tests" do
    subject{
      Category.new(name: "Agriculture", description: "Farming blah blah", market_cap: "1M dollars")
    }

    it "valid with correct attributes" do
      expect(subject).to be_valid  
      
    end

    it "not valid without name" do
      subject.name = nil 
      expect(subject).to_not be_valid 
    end  
  end

  context "#Associations Test" do
    it { should have_many :ventures }     
  end
end
