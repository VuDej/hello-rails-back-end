class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('RANDOM()').first
    render json: @greeting, sataus: 200
  end
end
