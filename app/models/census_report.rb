class CensusReport < ActiveRecord::Base
  attr_accessible :state, :year
  belongs_to :state
end