class Pool < ActiveRecord::Base
  has_many :meets
  has_many :users, :through => :competition_dives
end
