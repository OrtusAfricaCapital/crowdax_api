FactoryBot.define do
    factory :user do
      firstname {'jjingo'}
      lastname {Faker::Internet.user_name}
      email {Faker::Internet.safe_email}
      password {"123456789"}
      password_confirmation {"123456789"}
      account_type {'admin '}
      profile_photo {''}
      verified {'false'}
    end
  end
  