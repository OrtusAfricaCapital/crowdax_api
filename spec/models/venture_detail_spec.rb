require 'rails_helper'

RSpec.describe VentureDetail, type: :model do
    let(:venture_detail) { FactoryBot.build :venture_detail }
    subject { venture_detail }

    context '#Validation Tests ' do 
      
        it { should validate_presence_of :venture_id }       

    end

    context "#Associations Tests " do
        it { should belong_to :venture }         
    end
    
end
