class Crew < ActiveRecord::Base
  
  belongs_to  :boat
  belongs_to  :race
  belongs_to  :regattum #only to be able to change races within the same regattum
  belongs_to  :point # start_point. TODO Consider attribute name change

  validates   :race, 
                presence: true 

  def available_points
    race.regattum.organizer.points
  end
end
