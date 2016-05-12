class MeetsController < ApplicationController

  def index
  end

  def show
    @meet = Meet.find(params[:id])
  end

  def new
    @dives = []
    6.times do 
      @dives << CompetitionDive.new
    end
  end

  def create

    meet = Meet.find_or_create_by(meet_params(params))
    params[:dives].each do |dive|
      dive = CompetitionDive.create(
        dive_id: dive[:dive_id],
        score_1: dive[:score_1],
        score_2: dive[:score_2],
        score_3: dive[:score_3],
        order_number: dive[:order_number],
        user_id: session[:user_id],
        meet_id: meet.id
        )
    end
    binding.pry
    redirect_to meet_path(meet)
  end



  private

    def meet_params(my_params)
      my_params.require(:meet).permit(:description, :pool_id)
    end

    def dive_params(my_params)
      my_params.require(:dives)
    end

end