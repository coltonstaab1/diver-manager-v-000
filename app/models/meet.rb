class Meet < ActiveRecord::Base
  belongs_to :pool
  has_many :competition_dives
  has_many :dives, :through => :competition_dives
  has_many :users, :through => :competition_dives

end
