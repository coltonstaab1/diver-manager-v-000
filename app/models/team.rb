class Team < ActiveRecord::Base
  has_many :users
  has_many :competition_dives, :through => :users
  has_many :dives, :through => :competition_dives
  has_one :pool

end