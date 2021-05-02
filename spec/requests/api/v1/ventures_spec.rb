require 'rails_helper'

RSpec.describe "Api::V1::Ventures", type: :request do

  # describe "GET #show" do
  #   before(:each) do
  #     @venture = FactoryBot.create :venture
  #     get :show, id: @venture
  #   end

  #   it "returns the information about a reporter on a hash" do
  #     venture_response = json_response
  #     expect(venture_response[:name]).to eql @venture.name
  #   end

  #   it { should respond_with 200 }
  # end

  describe "GET #index /ventures" do 

    before(:each) do
      FactoryBot.create :venture 
      get '/api/v1/ventures'
    end

    it 'return all ventures' do 
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe "POST #create /venture" do 
    it 'create a new book' do 
      post '/api/v1/ventures',  
      params: {
        venture: {
        user_id: 1, 
        name: 'The test project',
        short_description: "software company",
        logo: "https://lecodesoft.logo.png",
        sector: "Tech",
        investment_stage: "Angel",
        total_investors: 20,
        amount_invested: 100.20, 
        initial_investing_date:  2.months.ago,
        last_investing_date: 1.days.ago,
        minimum_investment_amount: 10,
        activation_status: "active",
        approval_status: "approved", 
        approved_date: 2.months.ago
        }
      }     
      
      expect(response).to have_http_status(:created)
    end
  end



  
end
