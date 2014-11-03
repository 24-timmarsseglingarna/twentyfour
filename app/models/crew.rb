class Crew < ActiveRecord::Base
  
  belongs_to  :boat
  belongs_to  :race
  belongs_to  :regattum # consider remove
  belongs_to  :point # start_point. TODO Consider attribute name change
  has_many    :members
  has_many    :persons, :through => :members
  #has_one     :captain
  
  validates   :race, presence: true 

  def goal
    if race.regattum.common_goal_only
      race.regattum.common_goal
    else
      if race.regattum.common_goal.present?
        if common_goal
          race.regattum.common_goal
        else
          point
        end
      else
        point
      end
    end
  end

  def name
    id.to_s
  end
  
  def to_s
    id.to_s
  end
  
  def available_points # start points, TODO rename
    race.regattum.organizer.points
  end
end
