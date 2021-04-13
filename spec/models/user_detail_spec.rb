require 'rails_helper'

RSpec.describe UserDetail, type: :model do

    context '#validation tests' do 
        subject{
            UserDetail.new(
                user_id: 23,
                phonenumber: "0704520128",
                bio: "Software developer", 
                date_of_birth: "09/02/1990",
                country: "uganda",
                address: "katale sseguku ",
                social_media_id: 333, 
                cover_photo: "https://photos.com/1",
                profile_photo: "https://photos.com/2",
                website: "www.jjingokisakye.com",
                total_amount_invested: 100.00, 
                companies_invested_in: 22, 
                annual_investment_limit: 00
            )
        }
        it 'Is valid with valid attributes' do
            expect(subject).to be_valid
        end

        it 'Not valid without user_id' do
            subject.user_id = nil
            expect(subject).to_not be_valid        
        end
    end
end
