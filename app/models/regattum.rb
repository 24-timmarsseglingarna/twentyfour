class Regattum < ActiveRecord::Base
  belongs_to :organizer, dependent: :destroy
  has_many :races
  validates :name, presence: true
  validates :organizer, presence: true
end
