class Candidate < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer
end
