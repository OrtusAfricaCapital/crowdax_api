require 'rails_helper'

RSpec.describe Venture, type: :model do
    context " #validation tests" do
        subject{
            Venture.new(
                user_id: 2, 
                name: "lecodesoft",
                short_description: "software company",
                logo: "https://lecodesoft.logo.png",
                sector: "Tech",
                investment_stage: "Angel",
                total_investors: 20,
                amount_invested: 100.20, 
                initial_investing_date: "02/02/2021",
                last_investing_date: "05/05/2021",
                minimum_investment_amount: 10, 
                team_id: 1,
                competitor_id: 3, 
                investment_id: 2,
                activation_status: "active",
                approval_status: "approved", 
                approved_date: "02/02/2021"    
            )
        }

        it 'valid with all correct attributes' do
            expect(subject).to be_valid
        end

        it 'not valid without user_id' do 
            subject.user_id = nil 
            expect(subject).to_not be_valid
        end

        it 'not valid without name' do 
            subject.name = nil 
            expect(subject).to_not be_valid
        end
 
        it 'not valid without short_description' do 
            subject.short_description = nil 
            expect(subject).to_not be_valid
        end

        it 'not valid without sector' do 
            subject.sector = nil 
            expect(subject).to_not be_valid
        end

        it 'not valid without investment_stage' do
            subject.investment_stage = nil 
            expect(subject).to_not be_valid
        end
    end
    
  
end
