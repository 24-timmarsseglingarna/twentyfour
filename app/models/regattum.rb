class Regattum < ActiveRecord::Base
  belongs_to :organizer
  has_many :races, dependent: :destroy
  validates :name, presence: true
  validates :organizer, presence: true
end
