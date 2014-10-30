class Race < ActiveRecord::Base
  belongs_to :regattum
  has_many :crews
  validates :period, inclusion: { in: [12, 24, 48, 72, 96, 120] } # TODO move into configuration
  validates :start_from, presence: true # TODO validate reasonable
  validates :start_to, presence: true #TODO validate on or after start_from
  validates :regattum, presence: true

  def description
    description = ""
    if start_from == start_to
      description += I18n.l( start_from, format: :short )
    else
      description += " #{I18n.l( start_from, format: :short )} - "
      if start_from.to_date == start_to.to_date
        description += "#{I18n.l( start_to, format: :time )}"
      else
        description += "#{I18n.l( start_to, format: :short )}"
      end
    end
    description
  end
  
  def organizer
    organizer.name
  end

  def name
    "#{period} timmar: #{description}"
  end
  
end
