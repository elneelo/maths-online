class Lesson < ActiveRecord::Base

	validates :title, presence: true, length: { minimum: 2 }, allow_blank: true
	validates :date, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true

end
