require 'rails_helper'

RSpec.describe Competitor, type: :model do
context "#Validation Tests" do

  # subject { Competitor.new(
  #   venture_id: 2, 
  #   name: "Matibabu",
  #   difference: "The product is used for testing for malaria.",
  #   advantage: "The product makes tests in the shortest  time possible" 
  #   )
  # } 

  # it "valid with correct attributes" do
  #   expect(subject).to be_valid 
  # end

  # it "not valid without venture_id" do
  #   subject.venture_id = nil 
  #   expect(subject).to_not be_valid  
  # end

  # it "not valid without name" do
  #   subject.name = nil 
  #   expect(subject).to_not be_valid  
  # end

  # it "not valid without difference" do
  #   subject.difference = nil 
  #   expect(subject).to_not be_valid  
  # end

  
  it { should validate_presence_of :venture_id }   
  it { should validate_presence_of :name  }   
   it { should validate_presence_of :difference }   
end

context "#Associations" do
  it { should belong_to :venture }   
end
  
end
