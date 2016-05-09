class CompetitionDive < ActiveRecord::Base
  belongs_to :user
  belongs_to :dive
end
