require 'rails_helper'

RSpec.describe VentureDetail, type: :model do
    let(:venture_detail) { FactoryBot.build :venture_detail }
    subject { venture_detail }

    context '#Validation Tests ' do 
        # subject{
        #     VentureDetail.new(
        #         venture_id: 223, 
        #         full_description: "This is the best product in agriculture",
        #         need: "Covid viruses lasting on eats ", 
        #         solution: "Auto Cleaning of foods", 
        #         milestones: ["buy product", "start using"],
        #         how_it_works: ["buy", "use"],
        #         traction: " There's 20% increase from 2015",
        #         video_pitch: ["https://dkfjjkfs.com"],
        #         featured_images: ["https://dkfjjkfs.com"],
        #         founded_date: "02/02/2021"

        #     )
        # }

        # it 'valid with correct attributes' do
        #     expect(subject).to be_valid          
        # end

        # it 'not valid without venture_id' do
        #     subject.venture_id = nil
        #     expect(subject).to_not be_valid
        # end

        it { should validate_presence_of :venture_id }       

    end

    context "#Associations Tests " do
        it { should belong_to :venture }         
    end
    
end
