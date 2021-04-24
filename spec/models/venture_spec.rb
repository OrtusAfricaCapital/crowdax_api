require 'rails_helper'

RSpec.describe Venture, type: :model do
    let(:venture) { FactoryBot.build :venture }
    subject { venture }


    context " #validation tests" do
        # subject{
        #     Venture.new(
        #         user_id: 2, 
        #         name: "lecodesoft",
        #         short_description: "software company",
        #         logo: "https://lecodesoft.logo.png",
        #         sector: "Tech",
        #         investment_stage: "Angel",
        #         total_investors: 20,
        #         amount_invested: 100.20, 
        #         initial_investing_date: "02/02/2021",
        #         last_investing_date: "05/05/2021",
        #         minimum_investment_amount: 10,
        #         activation_status: "active",
        #         approval_status: "approved", 
        #         approved_date: "02/02/2021"    
        #     )
        # }

        # it 'valid with all correct attributes' do
        #     expect(subject).to be_valid
        # end

        # it 'not valid without user_id' do 
        #     subject.user_id = nil 
        #     expect(subject).to_not be_valid
        # end

        # it 'not valid without name' do 
        #     subject.name = nil 
        #     expect(subject).to_not be_valid
        # end
 
        # it 'not valid without short_description' do 
        #     subject.short_description = nil 
        #     expect(subject).to_not be_valid
        # end

        # it 'not valid without sector' do 
        #     subject.sector = nil 
        #     expect(subject).to_not be_valid
        # end

        # it 'not valid without investment_stage' do
        #     subject.investment_stage = nil 
        #     expect(subject).to_not be_valid
        # end

        it { should respond_to(:user_id) }
        it { should respond_to(:name) }
        it { should respond_to(:short_description) }
        it { should respond_to(:logo) }
        it { should respond_to(:sector) }
        it { should respond_to(:investment_stage) }
        it { should respond_to(:total_investors) }
        it { should respond_to(:amount_invested) }
        it { should respond_to(:initial_investing_date) }
        it { should respond_to(:last_investing_date) }
        it { should respond_to(:minimum_investment_amount) }
        it { should respond_to(:activation_status) }
        it { should respond_to(:approval_status) }
        it { should respond_to(:approved_date) }


        it { should validate_presence_of :user_id }        
        it { should validate_presence_of :name }
        
        it { should validate_presence_of :short_description }        
        it { should validate_presence_of :sector }
        it { should validate_presence_of :investment_stage }        
        
    end
    
    context "#Associatons Tests" do
        it { should belong_to :user }
        it { should have_one :venture_share}
        it { should have_one :venture_detail}        
        it { should have_many :competitors}
        it { should have_many :teams}

    end
    
end
