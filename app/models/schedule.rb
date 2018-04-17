class Schedule < ApplicationRecord
	belongs_to :user
	belongs_to :fitness_test	
	belongs_to :workout	

	after_save :send_rag_notification

	def send_rag_notification
		if(self.rating == -1)
			# Send out a mail to the admin
			ScheduleMailer.schedule_rating_bad(self.id).deliver_later
		end
	end
end
