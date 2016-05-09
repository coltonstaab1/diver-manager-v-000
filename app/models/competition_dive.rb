class CompetitionDive < ActiveRecord::Base
  belongs_to :user
  belongs_to :dive
  belongs_to :meet
end
