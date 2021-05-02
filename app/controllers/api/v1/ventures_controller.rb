class Api::V1::VenturesController < ApplicationController
  
  #retrieves one venture 
  def show
    @venture = Venture.find(params[:id])
    render json:{venture: @venture}
  end

  #show all ventures

  def index 
    @ventures = Venture.order('created_at DESC')
    render json:{ventures: @ventures}
  end

  #creates a new venture 
  def create 
    venture = Venture.new(venture_params)

    if venture.save 
      render json: venture, status: :created
    else
      render json: venture.errors, status: :unprocessable_entity 
    end
  end

  private

  def venture_params
    params.require(:venture).permit(:user_id,
      :name,
      :short_description,
      :logo, 
      :sector, 
      :investment_stage, 
      :total_investors, 
      :amount_invested, 
      :initial_investing_date, :last_investing_date, :minimum_investment_amount, :activation_status, :approval_status, :approved_date )
  end

  


end
