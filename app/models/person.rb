class Person < ActiveRecord::Base
  has_many    :members
  has_many    :crews, :through => :members
  #validates   :email, presence: true 
  
  def name
    name_str = "#{first_name} #{last_name}".strip
    if name_str.length < 1
      name_str = email
    end
    if name_str.length < 1
      name_str = "Person utan namn (id #{id})"
    end
    name_str
  end
  
end
