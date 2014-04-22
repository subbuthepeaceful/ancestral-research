class State < ActiveRecord::Base
  attr_accessible :name, :code
  has_many :census_reports
end