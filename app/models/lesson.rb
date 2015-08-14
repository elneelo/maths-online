class Lesson < ActiveRecord::Base

	validates :title, length: { minimum: 2 }, allow_blank: true	
end
