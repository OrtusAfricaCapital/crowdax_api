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
    
    before(:each) do
      current_user = FactoryBot.create :user

      venture_params = {
        user_id: current_user.id, 
        name: 'The test project',
        short_description: "software company",
        logo: "https://lecodesoft.logo.png",
        sector: "Tech",
        investment_stage: "Angel",
        traction: "This is it",
        location: "Kampala",
        referred_by: "Ortus Africa Capital",
        pitchdeck: "https://fackd.com"
      }
      post :create, user_id: current_user.id, venture: venture_params

    end

    it 'create a new venture' do 
      venture_response = json_response[:venture]
      expect(venture_response[:id]).to be_present
    end
  end



  
end
