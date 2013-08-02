module ApplicationHelper
	def short_date( time )
		return if time.nil?
		time.strftime("%b %d %Y")
	end

	def pretty_date( time )
		return if time.nil?
		if time > 1.day.ago
			time_ago_in_words(time)
		else
			time.strftime("%b %d %Y")
		end
	end
			
end
