class MeetsController < ApplicationController

  def index
  end

  def new
    @dives = []
    6.times do 
      @dives << CompetitionDive.new
    end
  end

  def create
    binding.pry
    params[:dives].each do |dive|
      CompetitionDive.create(dive_params)
    end
  end

  private
    def dive_params(my_params)
      my_params.permit(:score_1, :score_2, :score_3, :order_id, :user_id)
    end

end