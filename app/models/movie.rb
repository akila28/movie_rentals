=begin
class Movie < ActiveRecord::Base
  attr_accessible :language, :name, :year
  validates :name, presence: true, uniqueness: true
  validates :year, presence: true, numericality: true
  validates :language, presence: true 
end


class Movie < ActiveRecord::Base
attr_accessible  :language, :name, :year
validates :name,
 presence: true, uniqueness: true
validates :year, presence: true, numericality: true
validates :language, presence: true
end
=end

class Movie < ActiveRecord::Base
attr_accessible :language, :name, :year
validates :name, presence: true, uniqueness: true
validates :year, presence: true, numericality: true
validates :language, presence: true
end
