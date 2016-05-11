class MeetsController < ApplicationController

  def index
  end

  def new
    @dives = []
    6.times do 
      @dives << CompetitionDive.new
    end
  end

end