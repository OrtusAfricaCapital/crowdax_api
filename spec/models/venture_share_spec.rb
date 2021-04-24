require 'rails_helper'

RSpec.describe VentureShare, type: :model do

  let(:venture_share) { FactoryBot.create(:venture_share) }
  subject { venture_share }

  it { should respond_to(:venture_id) }  
  it { should respond_to(:unit_share_value) }  
  it { should respond_to(:overall_shares) }


  context '#Validation Tests' do
    # subject{
    #     VentureShare.new(
    #         venture_id: 1, 
    #         unit_share_value: 50, #dollars 
    #         overall_shares: 10000,
    #         total_sold_shares: 1000, 
    #         available_shares: 9000,
    #         valuation_cap: 0
    #     )
    # } 

    # it 'valid with all correct attributes' do 
    #     expect(subject).to be_valid  
    # end

    # it 'not valid without venture_id' do 
    #     subject.venture_id = nil 
    #     expect(subject).to_not be_valid
    # end

    # it 'not valid without unit_share_value' do 
    #     subject.unit_share_value = nil 
    #     expect(subject).to_not be_valid  
    # end

    # it 'not valid without overall_shares' do 
    #     subject.overall_shares = nil 
    #     expect(subject).to_not be_valid  
    # end

    
  it { should validate_presence_of :venture_id }
  it { should validate_presence_of :unit_share_value }
  it { should validate_presence_of :overall_shares }
  it { should validate_numericality_of(:unit_share_value).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:overall_shares).is_greater_than_or_equal_to(1) }
  it { should validate_numericality_of(:total_sold_shares).is_greater_than_or_equal_to(0)}  
  it { should validate_numericality_of(:available_shares).is_greater_than_or_equal_to(0)}
  
  
  end

  context "#Associations" do
      it { should belong_to :venture } 
  end
  
end
