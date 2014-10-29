class Organizer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :regattums, dependent: :destroy
end
