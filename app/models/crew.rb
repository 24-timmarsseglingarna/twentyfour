class Crew < ActiveRecord::Base
  belongs_to :boat
  belongs_to :race
end
