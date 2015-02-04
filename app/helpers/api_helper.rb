module ApiHelper

	def distance_of_time_in_words_or_absolute(date)
		if (date < Time.now - 2.days)
			Date.parse(date).strftime("%b %d, %Y")
		else
	   		distance_of_time_in_words(date, Time.now)
   		end
	end

end