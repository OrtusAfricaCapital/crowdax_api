require 'rails_helper'

RSpec.describe VentureShare, type: :model do
  context '#Validation Tests' do
    subject{
        VentureShare.new(
            venture_id: 1, 
            unit_share_value: 50, #dollars 
            overall_shares: 10000,
            total_sold_shares: 1000, 
            available_shares: 9000,
            valuation_cap: 0
        )
    } 

    it 'valid with all correct attributes' do 
        expect(subject).to be_valid  
    end

    it 'not valid without venture_id' do 
        subject.venture_id = nil 
        expect(subject).to_not be_valid
    end

    it 'not valid without unit_share_value' do 
        subject.unit_share_value = nil 
        expect(subject).to_not be_valid  
    end

    it 'not valid without overall_shares' do 
        subject.overall_shares = nil 
        expect(subject).to_not be_valid  
    end
  end
end
