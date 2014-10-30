class Point < ActiveRecord::Base
  include  ActionView::Helpers::OutputSafetyHelper
  validates :number, uniqueness: true, length: {in: 1..4}, uniqueness: true, numericality: { only_integer: true, greater_than: 0 }
  validates_length_of :name, :minimum => 2, :allow_blank => true
  has_and_belongs_to_many :organizers
  has_many :crews
  
  def lat_d
    lat.split[0].to_d + lat.split[1].gsub(/,/, ".").to_d/60
  end

  def long_d
    long.split[0].to_d + long.split[1].gsub(/,/, ".").to_d/60
  end
  
  def number_name
    raw(number + '&nbsp;' + name)
  end
  
  def self.organizer_selection organizer_id
    Organizer.find(organizer_id).points.order('number ASC')
  end
end
  