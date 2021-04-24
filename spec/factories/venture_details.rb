FactoryBot.define do
    factory :venture_detail do
        venture
        full_description {"This is the best product in agriculture"}
        need {"Covid viruses lasting on eats "} 
        solution {"Auto Cleaning of foods"} 
        milestones {["buy product", "start using"]}
        how_it_works {["buy", "use"]}
        traction {" There's 20% increase from 2015"}
        video_pitch {["https://dkfjjkfs.com"]}
        featured_images {["https://dkfjjkfs.com"]}
        founded_date {5.years.ago }

    end
  end
  