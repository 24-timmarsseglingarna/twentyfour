class Organizer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :regattums, dependent: :destroy
  has_and_belongs_to_many :points
end
