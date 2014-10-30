class Crew < ActiveRecord::Base
  belongs_to :boat
  belongs_to :race
  belongs_to :point # start_point
  def available_points
    race.regattum.organizer.points.first 10
  end
end
