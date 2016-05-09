class Dive < ActiveRecord::Base
  has_many :competition_dives
  has_many :users, :through => :competition_dives
  has_many :meets, :through => :competition_dives
  has_many :pools, :through => :competition_dives

end