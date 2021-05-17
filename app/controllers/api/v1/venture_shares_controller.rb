class Api::V1::VentureSharesController < ApplicationController

    
  def index 
    venture_shares = VentureShare.order('created_at DESC')
    render json:{venture_shares: venture_shares}
  end

end