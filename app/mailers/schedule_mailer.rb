class ScheduleMailer < ApplicationMailer

	def schedule_rating_bad(schedule_id)
    	@schedule = Schedule.find(schedule_id)
    	@user = @schedule.user
    	logger.debug("Sending mail to #{@user.email} from #{ENV['NOREPLY']}")
    	mail( :to => ENV['ADMIN'],
          :subject => "Bad Run: #{@user.first_name} #{@user.first_name} : #{@schedule.scheduled_date.strftime("%d/%m/%Y")}" )
  	end

end
