class Regattum < ActiveRecord::Base
  belongs_to  :organizer
  has_many    :races, dependent: :destroy
  belongs_to  :common_goal,
              :class_name => 'Point',
              :foreign_key => :common_goal_id
  validates   :name, presence: true
  validates   :organizer, presence: true
end
