class Classroom < ActiveRecord::Base

	validates :classroom_name, length: { minimum: 2 }, allow_blank: true	
end
