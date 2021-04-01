class StaticController < ApplicationController
def home
    render json: "Crowdax API V1"
end
end