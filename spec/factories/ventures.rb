FactoryBot.define do
    factory :venture do
        user 
        name {Faker::Name.unique.name}
        short_description {"software company"}
        logo {"https://lecodesoft.logo.png"}
        sector {"Tech"}
        investment_stage {"Angel"}
        total_investors {20}
        amount_invested {100.20} 
        initial_investing_date {2.months.ago}
        last_investing_date {1.days.ago}
        minimum_investment_amount {10}
        activation_status {"active"}
        approval_status {"approved"} 
        approved_date {2.months.ago}
    end
  end
  