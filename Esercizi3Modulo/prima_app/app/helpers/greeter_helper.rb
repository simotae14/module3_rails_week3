module GreeterHelper
	# definiamo un metodo per formattare la data
	# disponibile ad ogni view
	def formatted_time(time)
		# tempo espresso nel formato AM/PM
		time.strftime("%I:%M%p")
	end
end
